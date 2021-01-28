
# cusspvz/node docker image

[![layers](https://images.microbadger.com/badges/image/cusspvz/node:latest.svg)](https://microbadger.com/images/cusspvz/node) [![build status](https://travis-ci.org/cusspvz/node.docker.svg?branch=version%2Flatest)](http://travis-ci.org/cusspvz/node.docker)

🌐Super small Node.js container (~15MB) based on Alpine Linux OS

![docker and node](https://cloud.githubusercontent.com/assets/3604053/10341946/c611ffd4-6d0e-11e5-8b18-e1d92e544c23.jpeg)

[Want to check version tags?](#versions)

## What is this?

This is a repo for those who work with **Node.js** and **Docker**.

The propose of it is to cover all the needs since you start writing your first
file, to your rolling-update deployment.

As so, there are four things you need to know about this:
* `node.docker` Launcher - is a command-line tool which is a nice candidate to
  replace all your `node` calls, for a containerized one.
* `cusspvz/node:onbuild` docker image - Docker image with `ONBUILD` statements
  for helping you to deploy small, enhanced and *npm* standardized projects.
* `cusspvz/node:development` docker image - Development image for CI Runners
with built-in Docker-in-Docker support, build and versioning control tools.
* `cusspvz/node:latest` docker image - Docker Image based on Alpine Linux, this
  is the base that is **empowering** the super-heroes above.


## Usage

### Use node version you want, right away

What if you could develop using containers?
Here's a brief example of things you could do:

```bash
# Launch `index.js` using node 0.12.7
node.docker 0.12.7 ./index.js

# Guess what, you don't even need to have node installed.

# Without even having a Dockerfile, build and push a Docker Image from your app
cd ~/path/to/my/app
node.docker push 0.12.7 my-app:latest

# node.docker build node_version image_description
# node.docker run node_version image_description
# node.docker push node_version image_description
```

[Learn more about Launcher](./LAUNCHER.README.md)

### Using as your project's base image

You could use this image as a regular one, but we advise you to use `onbuild`
for rapid development.

Focus on your project instead of your **Dockerfile**. Keep It Simple, Stupid:
```Dockerfile
FROM cusspvz/node:0.12.7-onbuild
```

[Learn more about Onbuild](./ONBUILD.README.md)

### Test, Build and Deploy with `development` tag

I believe Node-based images shouldn't have their tests on it, it takes space
that won't be used into your production environment. Unfortunately its a very
common behavior at most projects I've digged in.

As so, I've created a new tag for all those so we can test an app before
building it!

#### What does the development image comes with?
* basic stuff like: bash, wget, curl...
* versioning software: **git** and **svn**
* build utils, so you don't have problems when running `npm install`
* Docker-in-Docker, based on `jpetazzo/dind` procedure
* Container orchestration tools: docker-compose and rancher-compose
* an Node.js build (are you serious? hahaha)

#### Steps for using it
* Add your test folder into your `.dockerignore`
* Create docker runners using up `cusspvz/node:development` image
* On your favorite CD/CI system, just set up to run the `test` stage before the
`build` one.


## Examples

* [simple-http-server](./examples/simple-http-server)

## Versions

* **latest** - [![build status](https://travis-ci.org/cusspvz/node.docker.svg?branch=version%2Flatest)](http://travis-ci.org/cusspvz/node.docker)

![layers](https://images.microbadger.com/badges/image/cusspvz/node:latest.svg) `cusspvz/node:latest`

![layers](https://images.microbadger.com/badges/image/cusspvz/node:onbuild.svg) `cusspvz/node:onbuild`

![layers](https://images.microbadger.com/badges/image/cusspvz/node:development.svg) `cusspvz/node:development`

* **7.6.0** - [![build status](https://travis-ci.org/cusspvz/node.docker.svg?branch=version%2F7.6.0)](http://travis-ci.org/cusspvz/node.docker)

![layers](https://images.microbadger.com/badges/image/cusspvz/node:7.6.0.svg) `cusspvz/node:7.6.0`

![layers](https://images.microbadger.com/badges/image/cusspvz/node:7.6.0-onbuild.svg) `cusspvz/node:7.6.0-onbuild`

![layers](https://images.microbadger.com/badges/image/cusspvz/node:7.6.0-development.svg) `cusspvz/node:7.6.0-development`

* **7.5.0** - [![build status](https://travis-ci.org/cusspvz/node.docker.svg?branch=version%2F7.5.0)](http://travis-ci.org/cusspvz/node.docker)

![layers](https://images.microbadger.com/badges/image/cusspvz/node:7.5.0.svg) `cusspvz/node:7.5.0`

![layers](https://images.microbadger.com/badges/image/cusspvz/node:7.5.0-onbuild.svg) `cusspvz/node:7.5.0-onbuild`

![layers](https://images.microbadger.com/badges/image/cusspvz/node:7.5.0-development.svg) `cusspvz/node:7.5.0-development`

* **7.4.0** - [![build status](https://travis-ci.org/cusspvz/node.docker.svg?branch=version%2F7.4.0)](http://travis-ci.org/cusspvz/node.docker)

![layers](https://images.microbadger.com/badges/image/cusspvz/node:7.4.0.svg) `cusspvz/node:7.4.0`

![layers](https://images.microbadger.com/badges/image/cusspvz/node:7.4.0-onbuild.svg) `cusspvz/node:7.4.0-onbuild`

![layers](https://images.microbadger.com/badges/image/cusspvz/node:7.4.0-development.svg) `cusspvz/node:7.4.0-development`

* **7.3.0** - [![build status](https://travis-ci.org/cusspvz/node.docker.svg?branch=version%2F7.3.0)](http://travis-ci.org/cusspvz/node.docker)

![layers](https://images.microbadger.com/badges/image/cusspvz/node:7.3.0.svg) `cusspvz/node:7.3.0`

![layers](https://images.microbadger.com/badges/image/cusspvz/node:7.3.0-onbuild.svg) `cusspvz/node:7.3.0-onbuild`

![layers](https://images.microbadger.com/badges/image/cusspvz/node:7.3.0-development.svg) `cusspvz/node:7.3.0-development`

* **7.2.1** - [![build status](https://travis-ci.org/cusspvz/node.docker.svg?branch=version%2F7.2.1)](http://travis-ci.org/cusspvz/node.docker)

![layers](https://images.microbadger.com/badges/image/cusspvz/node:7.2.1.svg) `cusspvz/node:7.2.1`

![layers](https://images.microbadger.com/badges/image/cusspvz/node:7.2.1-onbuild.svg) `cusspvz/node:7.2.1-onbuild`

![layers](https://images.microbadger.com/badges/image/cusspvz/node:7.2.1-development.svg) `cusspvz/node:7.2.1-development`

* **7.2.0** - [![build status](https://travis-ci.org/cusspvz/node.docker.svg?branch=version%2F7.2.0)](http://travis-ci.org/cusspvz/node.docker)

![layers](https://images.microbadger.com/badges/image/cusspvz/node:7.2.0.svg) `cusspvz/node:7.2.0`

![layers](https://images.microbadger.com/badges/image/cusspvz/node:7.2.0-onbuild.svg) `cusspvz/node:7.2.0-onbuild`

![layers](https://images.microbadger.com/badges/image/cusspvz/node:7.2.0-development.svg) `cusspvz/node:7.2.0-development`

* **7.1.0** - [![build status](https://travis-ci.org/cusspvz/node.docker.svg?branch=version%2F7.1.0)](http://travis-ci.org/cusspvz/node.docker)

![layers](https://images.microbadger.com/badges/image/cusspvz/node:7.1.0.svg) `cusspvz/node:7.1.0`

![layers](https://images.microbadger.com/badges/image/cusspvz/node:7.1.0-onbuild.svg) `cusspvz/node:7.1.0-onbuild`

![layers](https://images.microbadger.com/badges/image/cusspvz/node:7.1.0-development.svg) `cusspvz/node:7.1.0-development`

* **7.0.0** - [![build status](https://travis-ci.org/cusspvz/node.docker.svg?branch=version%2F7.0.0)](http://travis-ci.org/cusspvz/node.docker)

![layers](https://images.microbadger.com/badges/image/cusspvz/node:7.0.0.svg) `cusspvz/node:7.0.0`

![layers](https://images.microbadger.com/badges/image/cusspvz/node:7.0.0-onbuild.svg) `cusspvz/node:7.0.0-onbuild`

![layers](https://images.microbadger.com/badges/image/cusspvz/node:7.0.0-development.svg) `cusspvz/node:7.0.0-development`

* **6.10.0** - [![build status](https://travis-ci.org/cusspvz/node.docker.svg?branch=version%2F6.10.0)](http://travis-ci.org/cusspvz/node.docker)

![layers](https://images.microbadger.com/badges/image/cusspvz/node:6.10.0.svg) `cusspvz/node:6.10.0`

![layers](https://images.microbadger.com/badges/image/cusspvz/node:6.10.0-onbuild.svg) `cusspvz/node:6.10.0-onbuild`

![layers](https://images.microbadger.com/badges/image/cusspvz/node:6.10.0-development.svg) `cusspvz/node:6.10.0-development`

* **6.9.5** - [![build status](https://travis-ci.org/cusspvz/node.docker.svg?branch=version%2F6.9.5)](http://travis-ci.org/cusspvz/node.docker)

![layers](https://images.microbadger.com/badges/image/cusspvz/node:6.9.5.svg) `cusspvz/node:6.9.5`

![layers](https://images.microbadger.com/badges/image/cusspvz/node:6.9.5-onbuild.svg) `cusspvz/node:6.9.5-onbuild`

![layers](https://images.microbadger.com/badges/image/cusspvz/node:6.9.5-development.svg) `cusspvz/node:6.9.5-development`

* **6.9.4** - [![build status](https://travis-ci.org/cusspvz/node.docker.svg?branch=version%2F6.9.4)](http://travis-ci.org/cusspvz/node.docker)

![layers](https://images.microbadger.com/badges/image/cusspvz/node:6.9.4.svg) `cusspvz/node:6.9.4`

![layers](https://images.microbadger.com/badges/image/cusspvz/node:6.9.4-onbuild.svg) `cusspvz/node:6.9.4-onbuild`

![layers](https://images.microbadger.com/badges/image/cusspvz/node:6.9.4-development.svg) `cusspvz/node:6.9.4-development`

* **6.9.3** - [![build status](https://travis-ci.org/cusspvz/node.docker.svg?branch=version%2F6.9.3)](http://travis-ci.org/cusspvz/node.docker)

![layers](https://images.microbadger.com/badges/image/cusspvz/node:6.9.3.svg) `cusspvz/node:6.9.3`

![layers](https://images.microbadger.com/badges/image/cusspvz/node:6.9.3-onbuild.svg) `cusspvz/node:6.9.3-onbuild`

![layers](https://images.microbadger.com/badges/image/cusspvz/node:6.9.3-development.svg) `cusspvz/node:6.9.3-development`

* **6.9.2** - [![build status](https://travis-ci.org/cusspvz/node.docker.svg?branch=version%2F6.9.2)](http://travis-ci.org/cusspvz/node.docker)

![layers](https://images.microbadger.com/badges/image/cusspvz/node:6.9.2.svg) `cusspvz/node:6.9.2`

![layers](https://images.microbadger.com/badges/image/cusspvz/node:6.9.2-onbuild.svg) `cusspvz/node:6.9.2-onbuild`

![layers](https://images.microbadger.com/badges/image/cusspvz/node:6.9.2-development.svg) `cusspvz/node:6.9.2-development`

* **6.9.1** - [![build status](https://travis-ci.org/cusspvz/node.docker.svg?branch=version%2F6.9.1)](http://travis-ci.org/cusspvz/node.docker)

![layers](https://images.microbadger.com/badges/image/cusspvz/node:6.9.1.svg) `cusspvz/node:6.9.1`

![layers](https://images.microbadger.com/badges/image/cusspvz/node:6.9.1-onbuild.svg) `cusspvz/node:6.9.1-onbuild`

![layers](https://images.microbadger.com/badges/image/cusspvz/node:6.9.1-development.svg) `cusspvz/node:6.9.1-development`

* **6.9.0** - [![build status](https://travis-ci.org/cusspvz/node.docker.svg?branch=version%2F6.9.0)](http://travis-ci.org/cusspvz/node.docker)

![layers](https://images.microbadger.com/badges/image/cusspvz/node:6.9.0.svg) `cusspvz/node:6.9.0`

![layers](https://images.microbadger.com/badges/image/cusspvz/node:6.9.0-onbuild.svg) `cusspvz/node:6.9.0-onbuild`

![layers](https://images.microbadger.com/badges/image/cusspvz/node:6.9.0-development.svg) `cusspvz/node:6.9.0-development`

* **6.8.1** - [![build status](https://travis-ci.org/cusspvz/node.docker.svg?branch=version%2F6.8.1)](http://travis-ci.org/cusspvz/node.docker)

![layers](https://images.microbadger.com/badges/image/cusspvz/node:6.8.1.svg) `cusspvz/node:6.8.1`

![layers](https://images.microbadger.com/badges/image/cusspvz/node:6.8.1-onbuild.svg) `cusspvz/node:6.8.1-onbuild`

![layers](https://images.microbadger.com/badges/image/cusspvz/node:6.8.1-development.svg) `cusspvz/node:6.8.1-development`

* **6.8.0** - [![build status](https://travis-ci.org/cusspvz/node.docker.svg?branch=version%2F6.8.0)](http://travis-ci.org/cusspvz/node.docker)

![layers](https://images.microbadger.com/badges/image/cusspvz/node:6.8.0.svg) `cusspvz/node:6.8.0`

![layers](https://images.microbadger.com/badges/image/cusspvz/node:6.8.0-onbuild.svg) `cusspvz/node:6.8.0-onbuild`

![layers](https://images.microbadger.com/badges/image/cusspvz/node:6.8.0-development.svg) `cusspvz/node:6.8.0-development`

* **6.7.0** - [![build status](https://travis-ci.org/cusspvz/node.docker.svg?branch=version%2F6.7.0)](http://travis-ci.org/cusspvz/node.docker)

![layers](https://images.microbadger.com/badges/image/cusspvz/node:6.7.0.svg) `cusspvz/node:6.7.0`

![layers](https://images.microbadger.com/badges/image/cusspvz/node:6.7.0-onbuild.svg) `cusspvz/node:6.7.0-onbuild`

![layers](https://images.microbadger.com/badges/image/cusspvz/node:6.7.0-development.svg) `cusspvz/node:6.7.0-development`

* **6.6.0** - [![build status](https://travis-ci.org/cusspvz/node.docker.svg?branch=version%2F6.6.0)](http://travis-ci.org/cusspvz/node.docker)

![layers](https://images.microbadger.com/badges/image/cusspvz/node:6.6.0.svg) `cusspvz/node:6.6.0`

![layers](https://images.microbadger.com/badges/image/cusspvz/node:6.6.0-onbuild.svg) `cusspvz/node:6.6.0-onbuild`

![layers](https://images.microbadger.com/badges/image/cusspvz/node:6.6.0-development.svg) `cusspvz/node:6.6.0-development`

* **6.5.0** - [![build status](https://travis-ci.org/cusspvz/node.docker.svg?branch=version%2F6.5.0)](http://travis-ci.org/cusspvz/node.docker)

![layers](https://images.microbadger.com/badges/image/cusspvz/node:6.5.0.svg) `cusspvz/node:6.5.0`

![layers](https://images.microbadger.com/badges/image/cusspvz/node:6.5.0-onbuild.svg) `cusspvz/node:6.5.0-onbuild`

![layers](https://images.microbadger.com/badges/image/cusspvz/node:6.5.0-development.svg) `cusspvz/node:6.5.0-development`

* **6.4.0** - [![build status](https://travis-ci.org/cusspvz/node.docker.svg?branch=version%2F6.4.0)](http://travis-ci.org/cusspvz/node.docker)

![layers](https://images.microbadger.com/badges/image/cusspvz/node:6.4.0.svg) `cusspvz/node:6.4.0`

![layers](https://images.microbadger.com/badges/image/cusspvz/node:6.4.0-onbuild.svg) `cusspvz/node:6.4.0-onbuild`

![layers](https://images.microbadger.com/badges/image/cusspvz/node:6.4.0-development.svg) `cusspvz/node:6.4.0-development`


* **6.3.1** - [![build status](https://travis-ci.org/cusspvz/node.docker.svg?branch=version%2F6.3.1)](http://travis-ci.org/cusspvz/node.docker)

![layers](https://images.microbadger.com/badges/image/cusspvz/node:6.3.1.svg) `cusspvz/node:6.3.1`

![layers](https://images.microbadger.com/badges/image/cusspvz/node:6.3.1-onbuild.svg) `cusspvz/node:6.3.1-onbuild`

![layers](https://images.microbadger.com/badges/image/cusspvz/node:6.3.1-development.svg) `cusspvz/node:6.3.1-development`


* **6.3.0** - [![build status](https://travis-ci.org/cusspvz/node.docker.svg?branch=version%2F6.3.0)](http://travis-ci.org/cusspvz/node.docker)

![layers](https://images.microbadger.com/badges/image/cusspvz/node:6.3.0.svg) `cusspvz/node:6.3.0`

![layers](https://images.microbadger.com/badges/image/cusspvz/node:6.3.0-onbuild.svg) `cusspvz/node:6.3.0-onbuild`

![layers](https://images.microbadger.com/badges/image/cusspvz/node:6.3.0-development.svg) `cusspvz/node:6.3.0-development`


* **6.2.2** - [![build status](https://travis-ci.org/cusspvz/node.docker.svg?branch=version%2F6.2.2)](http://travis-ci.org/cusspvz/node.docker)

![layers](https://images.microbadger.com/badges/image/cusspvz/node:6.2.2.svg) `cusspvz/node:6.2.2`

![layers](https://images.microbadger.com/badges/image/cusspvz/node:6.2.2-onbuild.svg) `cusspvz/node:6.2.2-onbuild`

![layers](https://images.microbadger.com/badges/image/cusspvz/node:6.2.2-development.svg) `cusspvz/node:6.2.2-development`

