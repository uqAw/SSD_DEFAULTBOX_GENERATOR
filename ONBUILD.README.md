
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
    }
}
```

`Dockerfile`
```Dockerfile
FROM cusspvz/node:0.12.7-onbuild
EXPOSE 3000 # You may need to change this to your app's port
```

`docker build -t my-awesome-app:1.0.3 .` will build a production-ready image by
installing all needed dependencies and linking things together.

## How does `onbuild` works?

Under the hood, it executes the following commands:
* `ENV NODE_ENV=production` - This sets `NODE_ENV` as production so you can pull
  already the generated image into your servers! :)
* `ADD . /` - This will copy all files and folders present on `Dockerfile`
  directory into docker image. If you want this to ignore some files, just
  create `.dockerignore` and place there ignore rules.
* `npm install --production` - Installs only production needed packages
  dependencies. If you need some of the development packages, use next command
  to install them. Please be sure you left your image clean and small.
* `npm run build` - You should **ALWAYS** have a `build` script. Most of us will