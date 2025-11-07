# WADComs [![Build Status][]][travis]

[Build Status]: https://travis-ci.org/WADComs/WADComs.github.io.svg?branch=master
[travis]: https://travis-ci.org/WADComs/WADComs.github.io

WADComs is an interactive cheat sheet, containing a curated list of offensive security tools and their respective commands, to be used against Windows/AD environments.

Find the project at https://WADComs.github.io

Created by [John Woodman](https://twitter.com/JohnWoodman15)

[!["Buy Me A Coffee"](https://www.buymeacoffee.com/assets/img/custom_images/orange_img.png)](https://www.buymeacoffee.com/JohnWoodman)

[<img src="assets/WCS_button.png" width="15%" height="15%">](https://secure.wcs.org/donate/keep-world-wild)

## Local Docker Preview

Build the image once:

```bash
docker build -t wadcoms-jekyll .
```

Serve the site while binding the exposed port only to your host loopback interface:

```bash
docker run --rm -p 127.0.0.1:4000:4000 wadcoms-jekyll
```

Then browse to http://localhost:4000. The container runs Jekyll in livereload mode, so edits in the repo refresh automatically.
