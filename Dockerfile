FROM ruby:3.1

ARG BUNDLER_VERSION=2.5.11

ENV BUNDLE_PATH=/usr/local/bundle \
    BUNDLE_JOBS=4 \
    BUNDLE_RETRY=3 \
    JEKYLL_ENV=development

WORKDIR /srv/site

# Install build tooling required by native gems.
RUN apt-get update && apt-get install -y --no-install-recommends \
        build-essential \
    && rm -rf /var/lib/apt/lists/*

# Install Ruby dependencies first to leverage Docker layer caching.
COPY Gemfile Gemfile.lock ./
RUN gem install bundler -v ${BUNDLER_VERSION} && \
    bundle install

# Copy the rest of the site content.
COPY . .

EXPOSE 4000

CMD ["bundle", "exec", "jekyll", "serve", "--host", "0.0.0.0", "--port", "4000", "--livereload", "--force_polling"]
