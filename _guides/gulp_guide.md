## Getting Started with Gulp
In this project we are using Gulp 4.0, it is currently in BETA version. The reason to use this version was gulp watch, gulp watch uses chokidar and there was a bug in chokidar that if i am watching a folder and that is deleted then the watch will throw an error. In the latest version of chokidar they fixed this and gulp 4 is using the that.

### Installing and setting up for the first time

**1. Install gulp globally:**

> If you have previously installed a version of gulp globally, please run `npm rm --global gulp`
> to make sure your old version doesn't collide with gulp-cli.

```sh
$ npm install --global gulp-cli
```

**2 Install project dependencies:**

```sh
$ npm install
```

### Gulp available tasks and use cases -

**1. List gulp available tasks:**
```sh
$ gulp --tasks
```

**2. Generate Application Documentation:**
```sh
$ gulp generateDocs
```

**3. Run code analysis ( js-lint ):**
```sh
$ gulp lint
```

**4. Creating Build for production:**
```sh
$ gulp createBuild
```