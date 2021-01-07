
# cuss.pvz/node Docker Image

This image supports sugar onbuild, meaning that your Dockerfile could be super
hyper simple (as one-line), unless you need to install things into linux system.
Suff related directly with `npm` and your app, should stay at `package.json`.


## Brief onbuild example

`package.json`
```json
{
    "name": "my-awesome-app",
    "version": "1.0.3",
    "scripts": {
        "build": "browserify app/index.js > build/index.js",
        "start": "node serve.js /build"