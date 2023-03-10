
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


* **6.2.1** - [![build status](https://travis-ci.org/cusspvz/node.docker.svg?branch=version%2F6.2.1)](http://travis-ci.org/cusspvz/node.docker)

![layers](https://images.microbadger.com/badges/image/cusspvz/node:6.2.1.svg) `cusspvz/node:6.2.1`

![layers](https://images.microbadger.com/badges/image/cusspvz/node:6.2.1-onbuild.svg) `cusspvz/node:6.2.1-onbuild`

![layers](https://images.microbadger.com/badges/image/cusspvz/node:6.2.1-development.svg) `cusspvz/node:6.2.1-development`


* **6.2.0** - [![build status](https://travis-ci.org/cusspvz/node.docker.svg?branch=version%2F6.2.0)](http://travis-ci.org/cusspvz/node.docker)

![layers](https://images.microbadger.com/badges/image/cusspvz/node:6.2.0.svg) `cusspvz/node:6.2.0`

![layers](https://images.microbadger.com/badges/image/cusspvz/node:6.2.0-onbuild.svg) `cusspvz/node:6.2.0-onbuild`

![layers](https://images.microbadger.com/badges/image/cusspvz/node:6.2.0-development.svg) `cusspvz/node:6.2.0-development`


* **6.1.0** - [![build status](https://travis-ci.org/cusspvz/node.docker.svg?branch=version%2F6.1.0)](http://travis-ci.org/cusspvz/node.docker)

![layers](https://images.microbadger.com/badges/image/cusspvz/node:6.1.0.svg) `cusspvz/node:6.1.0`

![layers](https://images.microbadger.com/badges/image/cusspvz/node:6.1.0-onbuild.svg) `cusspvz/node:6.1.0-onbuild`

![layers](https://images.microbadger.com/badges/image/cusspvz/node:6.1.0-development.svg) `cusspvz/node:6.1.0-development`


* **6.0.0** - [![build status](https://travis-ci.org/cusspvz/node.docker.svg?branch=version%2F6.0.0)](http://travis-ci.org/cusspvz/node.docker)

![layers](https://images.microbadger.com/badges/image/cusspvz/node:6.0.0.svg) `cusspvz/node:6.0.0`

![layers](https://images.microbadger.com/badges/image/cusspvz/node:6.0.0-onbuild.svg) `cusspvz/node:6.0.0-onbuild`

![layers](https://images.microbadger.com/badges/image/cusspvz/node:6.0.0-development.svg) `cusspvz/node:6.0.0-development`


* **5.12.0** - [![build status](https://travis-ci.org/cusspvz/node.docker.svg?branch=version%2F5.12.0)](http://travis-ci.org/cusspvz/node.docker)

![layers](https://images.microbadger.com/badges/image/cusspvz/node:5.12.0.svg) `cusspvz/node:5.12.0`

![layers](https://images.microbadger.com/badges/image/cusspvz/node:5.12.0-onbuild.svg) `cusspvz/node:5.12.0-onbuild`

![layers](https://images.microbadger.com/badges/image/cusspvz/node:5.12.0-development.svg) `cusspvz/node:5.12.0-development`


* **5.11.1** - [![build status](https://travis-ci.org/cusspvz/node.docker.svg?branch=version%2F5.11.1)](http://travis-ci.org/cusspvz/node.docker)

![layers](https://images.microbadger.com/badges/image/cusspvz/node:5.11.1.svg) `cusspvz/node:5.11.1`

![layers](https://images.microbadger.com/badges/image/cusspvz/node:5.11.1-onbuild.svg) `cusspvz/node:5.11.1-onbuild`

![layers](https://images.microbadger.com/badges/image/cusspvz/node:5.11.1-development.svg) `cusspvz/node:5.11.1-development`


* **5.11.0** - [![build status](https://travis-ci.org/cusspvz/node.docker.svg?branch=version%2F5.11.0)](http://travis-ci.org/cusspvz/node.docker)

![layers](https://images.microbadger.com/badges/image/cusspvz/node:5.11.0.svg) `cusspvz/node:5.11.0`

![layers](https://images.microbadger.com/badges/image/cusspvz/node:5.11.0-onbuild.svg) `cusspvz/node:5.11.0-onbuild`

![layers](https://images.microbadger.com/badges/image/cusspvz/node:5.11.0-development.svg) `cusspvz/node:5.11.0-development`


* **5.10.1** - [![build status](https://travis-ci.org/cusspvz/node.docker.svg?branch=version%2F5.10.1)](http://travis-ci.org/cusspvz/node.docker)

![layers](https://images.microbadger.com/badges/image/cusspvz/node:5.10.1.svg) `cusspvz/node:5.10.1`

![layers](https://images.microbadger.com/badges/image/cusspvz/node:5.10.1-onbuild.svg) `cusspvz/node:5.10.1-onbuild`

![layers](https://images.microbadger.com/badges/image/cusspvz/node:5.10.1-development.svg) `cusspvz/node:5.10.1-development`


* **5.10.0** - [![build status](https://travis-ci.org/cusspvz/node.docker.svg?branch=version%2F5.10.0)](http://travis-ci.org/cusspvz/node.docker)

![layers](https://images.microbadger.com/badges/image/cusspvz/node:5.10.0.svg) `cusspvz/node:5.10.0`

![layers](https://images.microbadger.com/badges/image/cusspvz/node:5.10.0-onbuild.svg) `cusspvz/node:5.10.0-onbuild`

![layers](https://images.microbadger.com/badges/image/cusspvz/node:5.10.0-development.svg) `cusspvz/node:5.10.0-development`


* **5.9.1** - [![build status](https://travis-ci.org/cusspvz/node.docker.svg?branch=version%2F5.9.1)](http://travis-ci.org/cusspvz/node.docker)

![layers](https://images.microbadger.com/badges/image/cusspvz/node:5.9.1.svg) `cusspvz/node:5.9.1`

![layers](https://images.microbadger.com/badges/image/cusspvz/node:5.9.1-onbuild.svg) `cusspvz/node:5.9.1-onbuild`

![layers](https://images.microbadger.com/badges/image/cusspvz/node:5.9.1-development.svg) `cusspvz/node:5.9.1-development`


* **5.9.0** - [![build status](https://travis-ci.org/cusspvz/node.docker.svg?branch=version%2F5.9.0)](http://travis-ci.org/cusspvz/node.docker)

![layers](https://images.microbadger.com/badges/image/cusspvz/node:5.9.0.svg) `cusspvz/node:5.9.0`

![layers](https://images.microbadger.com/badges/image/cusspvz/node:5.9.0-onbuild.svg) `cusspvz/node:5.9.0-onbuild`

![layers](https://images.microbadger.com/badges/image/cusspvz/node:5.9.0-development.svg) `cusspvz/node:5.9.0-development`


* **5.8.0** - [![build status](https://travis-ci.org/cusspvz/node.docker.svg?branch=version%2F5.8.0)](http://travis-ci.org/cusspvz/node.docker)

![layers](https://images.microbadger.com/badges/image/cusspvz/node:5.8.0.svg) `cusspvz/node:5.8.0`

![layers](https://images.microbadger.com/badges/image/cusspvz/node:5.8.0-onbuild.svg) `cusspvz/node:5.8.0-onbuild`

![layers](https://images.microbadger.com/badges/image/cusspvz/node:5.8.0-development.svg) `cusspvz/node:5.8.0-development`


* **5.7.1** - [![build status](https://travis-ci.org/cusspvz/node.docker.svg?branch=version%2F5.7.1)](http://travis-ci.org/cusspvz/node.docker)

![layers](https://images.microbadger.com/badges/image/cusspvz/node:5.7.1.svg) `cusspvz/node:5.7.1`

![layers](https://images.microbadger.com/badges/image/cusspvz/node:5.7.1-onbuild.svg) `cusspvz/node:5.7.1-onbuild`

![layers](https://images.microbadger.com/badges/image/cusspvz/node:5.7.1-development.svg) `cusspvz/node:5.7.1-development`


* **5.7.0** - [![build status](https://travis-ci.org/cusspvz/node.docker.svg?branch=version%2F5.7.0)](http://travis-ci.org/cusspvz/node.docker)

![layers](https://images.microbadger.com/badges/image/cusspvz/node:5.7.0.svg) `cusspvz/node:5.7.0`

![layers](https://images.microbadger.com/badges/image/cusspvz/node:5.7.0-onbuild.svg) `cusspvz/node:5.7.0-onbuild`

![layers](https://images.microbadger.com/badges/image/cusspvz/node:5.7.0-development.svg) `cusspvz/node:5.7.0-development`


* **5.6.0** - [![build status](https://travis-ci.org/cusspvz/node.docker.svg?branch=version%2F5.6.0)](http://travis-ci.org/cusspvz/node.docker)

![layers](https://images.microbadger.com/badges/image/cusspvz/node:5.6.0.svg) `cusspvz/node:5.6.0`

![layers](https://images.microbadger.com/badges/image/cusspvz/node:5.6.0-onbuild.svg) `cusspvz/node:5.6.0-onbuild`

![layers](https://images.microbadger.com/badges/image/cusspvz/node:5.6.0-development.svg) `cusspvz/node:5.6.0-development`


* **5.5.0** - [![build status](https://travis-ci.org/cusspvz/node.docker.svg?branch=version%2F5.5.0)](http://travis-ci.org/cusspvz/node.docker)

![layers](https://images.microbadger.com/badges/image/cusspvz/node:5.5.0.svg) `cusspvz/node:5.5.0`

![layers](https://images.microbadger.com/badges/image/cusspvz/node:5.5.0-onbuild.svg) `cusspvz/node:5.5.0-onbuild`

![layers](https://images.microbadger.com/badges/image/cusspvz/node:5.5.0-development.svg) `cusspvz/node:5.5.0-development`


* **5.4.1** - [![build status](https://travis-ci.org/cusspvz/node.docker.svg?branch=version%2F5.4.1)](http://travis-ci.org/cusspvz/node.docker)

![layers](https://images.microbadger.com/badges/image/cusspvz/node:5.4.1.svg) `cusspvz/node:5.4.1`

![layers](https://images.microbadger.com/badges/image/cusspvz/node:5.4.1-onbuild.svg) `cusspvz/node:5.4.1-onbuild`

![layers](https://images.microbadger.com/badges/image/cusspvz/node:5.4.1-development.svg) `cusspvz/node:5.4.1-development`


* **5.4.0** - [![build status](https://travis-ci.org/cusspvz/node.docker.svg?branch=version%2F5.4.0)](http://travis-ci.org/cusspvz/node.docker)

![layers](https://images.microbadger.com/badges/image/cusspvz/node:5.4.0.svg) `cusspvz/node:5.4.0`

![layers](https://images.microbadger.com/badges/image/cusspvz/node:5.4.0-onbuild.svg) `cusspvz/node:5.4.0-onbuild`

![layers](https://images.microbadger.com/badges/image/cusspvz/node:5.4.0-development.svg) `cusspvz/node:5.4.0-development`


* **5.3.0** - [![build status](https://travis-ci.org/cusspvz/node.docker.svg?branch=version%2F5.3.0)](http://travis-ci.org/cusspvz/node.docker)

![layers](https://images.microbadger.com/badges/image/cusspvz/node:5.3.0.svg) `cusspvz/node:5.3.0`

![layers](https://images.microbadger.com/badges/image/cusspvz/node:5.3.0-onbuild.svg) `cusspvz/node:5.3.0-onbuild`

![layers](https://images.microbadger.com/badges/image/cusspvz/node:5.3.0-development.svg) `cusspvz/node:5.3.0-development`


* **5.2.0** - [![build status](https://travis-ci.org/cusspvz/node.docker.svg?branch=version%2F5.2.0)](http://travis-ci.org/cusspvz/node.docker)

![layers](https://images.microbadger.com/badges/image/cusspvz/node:5.2.0.svg) `cusspvz/node:5.2.0`

![layers](https://images.microbadger.com/badges/image/cusspvz/node:5.2.0-onbuild.svg) `cusspvz/node:5.2.0-onbuild`

![layers](https://images.microbadger.com/badges/image/cusspvz/node:5.2.0-development.svg) `cusspvz/node:5.2.0-development`


* **5.1.1** - [![build status](https://travis-ci.org/cusspvz/node.docker.svg?branch=version%2F5.1.1)](http://travis-ci.org/cusspvz/node.docker)

![layers](https://images.microbadger.com/badges/image/cusspvz/node:5.1.1.svg) `cusspvz/node:5.1.1`

![layers](https://images.microbadger.com/badges/image/cusspvz/node:5.1.1-onbuild.svg) `cusspvz/node:5.1.1-onbuild`

![layers](https://images.microbadger.com/badges/image/cusspvz/node:5.1.1-development.svg) `cusspvz/node:5.1.1-development`


* **5.1.0** - [![build status](https://travis-ci.org/cusspvz/node.docker.svg?branch=version%2F5.1.0)](http://travis-ci.org/cusspvz/node.docker)

![layers](https://images.microbadger.com/badges/image/cusspvz/node:5.1.0.svg) `cusspvz/node:5.1.0`

![layers](https://images.microbadger.com/badges/image/cusspvz/node:5.1.0-onbuild.svg) `cusspvz/node:5.1.0-onbuild`

![layers](https://images.microbadger.com/badges/image/cusspvz/node:5.1.0-development.svg) `cusspvz/node:5.1.0-development`


* **5.0.0** - [![build status](https://travis-ci.org/cusspvz/node.docker.svg?branch=version%2F5.0.0)](http://travis-ci.org/cusspvz/node.docker)

![layers](https://images.microbadger.com/badges/image/cusspvz/node:5.0.0.svg) `cusspvz/node:5.0.0`

![layers](https://images.microbadger.com/badges/image/cusspvz/node:5.0.0-onbuild.svg) `cusspvz/node:5.0.0-onbuild`

![layers](https://images.microbadger.com/badges/image/cusspvz/node:5.0.0-development.svg) `cusspvz/node:5.0.0-development`


* **4.4.7** - [![build status](https://travis-ci.org/cusspvz/node.docker.svg?branch=version%2F4.4.7)](http://travis-ci.org/cusspvz/node.docker)

![layers](https://images.microbadger.com/badges/image/cusspvz/node:4.4.7.svg) `cusspvz/node:4.4.7`

![layers](https://images.microbadger.com/badges/image/cusspvz/node:4.4.7-onbuild.svg) `cusspvz/node:4.4.7-onbuild`

![layers](https://images.microbadger.com/badges/image/cusspvz/node:4.4.7-development.svg) `cusspvz/node:4.4.7-development`


* **4.4.6** - [![build status](https://travis-ci.org/cusspvz/node.docker.svg?branch=version%2F4.4.6)](http://travis-ci.org/cusspvz/node.docker)

![layers](https://images.microbadger.com/badges/image/cusspvz/node:4.4.6.svg) `cusspvz/node:4.4.6`

![layers](https://images.microbadger.com/badges/image/cusspvz/node:4.4.6-onbuild.svg) `cusspvz/node:4.4.6-onbuild`

![layers](https://images.microbadger.com/badges/image/cusspvz/node:4.4.6-development.svg) `cusspvz/node:4.4.6-development`


* **4.4.5** - [![build status](https://travis-ci.org/cusspvz/node.docker.svg?branch=version%2F4.4.5)](http://travis-ci.org/cusspvz/node.docker)

![layers](https://images.microbadger.com/badges/image/cusspvz/node:4.4.5.svg) `cusspvz/node:4.4.5`

![layers](https://images.microbadger.com/badges/image/cusspvz/node:4.4.5-onbuild.svg) `cusspvz/node:4.4.5-onbuild`

![layers](https://images.microbadger.com/badges/image/cusspvz/node:4.4.5-development.svg) `cusspvz/node:4.4.5-development`


* **4.4.4** - [![build status](https://travis-ci.org/cusspvz/node.docker.svg?branch=version%2F4.4.4)](http://travis-ci.org/cusspvz/node.docker)

![layers](https://images.microbadger.com/badges/image/cusspvz/node:4.4.4.svg) `cusspvz/node:4.4.4`

![layers](https://images.microbadger.com/badges/image/cusspvz/node:4.4.4-onbuild.svg) `cusspvz/node:4.4.4-onbuild`

![layers](https://images.microbadger.com/badges/image/cusspvz/node:4.4.4-development.svg) `cusspvz/node:4.4.4-development`


* **4.4.3** - [![build status](https://travis-ci.org/cusspvz/node.docker.svg?branch=version%2F4.4.3)](http://travis-ci.org/cusspvz/node.docker)

![layers](https://images.microbadger.com/badges/image/cusspvz/node:4.4.3.svg) `cusspvz/node:4.4.3`

![layers](https://images.microbadger.com/badges/image/cusspvz/node:4.4.3-onbuild.svg) `cusspvz/node:4.4.3-onbuild`

![layers](https://images.microbadger.com/badges/image/cusspvz/node:4.4.3-development.svg) `cusspvz/node:4.4.3-development`


* **4.4.2** - [![build status](https://travis-ci.org/cusspvz/node.docker.svg?branch=version%2F4.4.2)](http://travis-ci.org/cusspvz/node.docker)

![layers](https://images.microbadger.com/badges/image/cusspvz/node:4.4.2.svg) `cusspvz/node:4.4.2`

![layers](https://images.microbadger.com/badges/image/cusspvz/node:4.4.2-onbuild.svg) `cusspvz/node:4.4.2-onbuild`

![layers](https://images.microbadger.com/badges/image/cusspvz/node:4.4.2-development.svg) `cusspvz/node:4.4.2-development`


* **4.4.1** - [![build status](https://travis-ci.org/cusspvz/node.docker.svg?branch=version%2F4.4.1)](http://travis-ci.org/cusspvz/node.docker)

![layers](https://images.microbadger.com/badges/image/cusspvz/node:4.4.1.svg) `cusspvz/node:4.4.1`

![layers](https://images.microbadger.com/badges/image/cusspvz/node:4.4.1-onbuild.svg) `cusspvz/node:4.4.1-onbuild`

![layers](https://images.microbadger.com/badges/image/cusspvz/node:4.4.1-development.svg) `cusspvz/node:4.4.1-development`


* **4.4.0** - [![build status](https://travis-ci.org/cusspvz/node.docker.svg?branch=version%2F4.4.0)](http://travis-ci.org/cusspvz/node.docker)

![layers](https://images.microbadger.com/badges/image/cusspvz/node:4.4.0.svg) `cusspvz/node:4.4.0`

![layers](https://images.microbadger.com/badges/image/cusspvz/node:4.4.0-onbuild.svg) `cusspvz/node:4.4.0-onbuild`

![layers](https://images.microbadger.com/badges/image/cusspvz/node:4.4.0-development.svg) `cusspvz/node:4.4.0-development`


* **4.3.2** - [![build status](https://travis-ci.org/cusspvz/node.docker.svg?branch=version%2F4.3.2)](http://travis-ci.org/cusspvz/node.docker)

![layers](https://images.microbadger.com/badges/image/cusspvz/node:4.3.2.svg) `cusspvz/node:4.3.2`

![layers](https://images.microbadger.com/badges/image/cusspvz/node:4.3.2-onbuild.svg) `cusspvz/node:4.3.2-onbuild`

![layers](https://images.microbadger.com/badges/image/cusspvz/node:4.3.2-development.svg) `cusspvz/node:4.3.2-development`


* **4.3.1** - [![build status](https://travis-ci.org/cusspvz/node.docker.svg?branch=version%2F4.3.1)](http://travis-ci.org/cusspvz/node.docker)

![layers](https://images.microbadger.com/badges/image/cusspvz/node:4.3.1.svg) `cusspvz/node:4.3.1`

![layers](https://images.microbadger.com/badges/image/cusspvz/node:4.3.1-onbuild.svg) `cusspvz/node:4.3.1-onbuild`

![layers](https://images.microbadger.com/badges/image/cusspvz/node:4.3.1-development.svg) `cusspvz/node:4.3.1-development`


* **4.3.0** - [![build status](https://travis-ci.org/cusspvz/node.docker.svg?branch=version%2F4.3.0)](http://travis-ci.org/cusspvz/node.docker)

![layers](https://images.microbadger.com/badges/image/cusspvz/node:4.3.0.svg) `cusspvz/node:4.3.0`

![layers](https://images.microbadger.com/badges/image/cusspvz/node:4.3.0-onbuild.svg) `cusspvz/node:4.3.0-onbuild`

![layers](https://images.microbadger.com/badges/image/cusspvz/node:4.3.0-development.svg) `cusspvz/node:4.3.0-development`


* **4.2.6** - [![build status](https://travis-ci.org/cusspvz/node.docker.svg?branch=version%2F4.2.6)](http://travis-ci.org/cusspvz/node.docker)

![layers](https://images.microbadger.com/badges/image/cusspvz/node:4.2.6.svg) `cusspvz/node:4.2.6`

![layers](https://images.microbadger.com/badges/image/cusspvz/node:4.2.6-onbuild.svg) `cusspvz/node:4.2.6-onbuild`

![layers](https://images.microbadger.com/badges/image/cusspvz/node:4.2.6-development.svg) `cusspvz/node:4.2.6-development`


* **4.2.5** - [![build status](https://travis-ci.org/cusspvz/node.docker.svg?branch=version%2F4.2.5)](http://travis-ci.org/cusspvz/node.docker)

![layers](https://images.microbadger.com/badges/image/cusspvz/node:4.2.5.svg) `cusspvz/node:4.2.5`

![layers](https://images.microbadger.com/badges/image/cusspvz/node:4.2.5-onbuild.svg) `cusspvz/node:4.2.5-onbuild`

![layers](https://images.microbadger.com/badges/image/cusspvz/node:4.2.5-development.svg) `cusspvz/node:4.2.5-development`


* **4.2.4** - [![build status](https://travis-ci.org/cusspvz/node.docker.svg?branch=version%2F4.2.4)](http://travis-ci.org/cusspvz/node.docker)

![layers](https://images.microbadger.com/badges/image/cusspvz/node:4.2.4.svg) `cusspvz/node:4.2.4`

![layers](https://images.microbadger.com/badges/image/cusspvz/node:4.2.4-onbuild.svg) `cusspvz/node:4.2.4-onbuild`

![layers](https://images.microbadger.com/badges/image/cusspvz/node:4.2.4-development.svg) `cusspvz/node:4.2.4-development`


* **4.2.3** - [![build status](https://travis-ci.org/cusspvz/node.docker.svg?branch=version%2F4.2.3)](http://travis-ci.org/cusspvz/node.docker)

![layers](https://images.microbadger.com/badges/image/cusspvz/node:4.2.3.svg) `cusspvz/node:4.2.3`

![layers](https://images.microbadger.com/badges/image/cusspvz/node:4.2.3-onbuild.svg) `cusspvz/node:4.2.3-onbuild`

![layers](https://images.microbadger.com/badges/image/cusspvz/node:4.2.3-development.svg) `cusspvz/node:4.2.3-development`


* **4.2.2** - [![build status](https://travis-ci.org/cusspvz/node.docker.svg?branch=version%2F4.2.2)](http://travis-ci.org/cusspvz/node.docker)

![layers](https://images.microbadger.com/badges/image/cusspvz/node:4.2.2.svg) `cusspvz/node:4.2.2`

![layers](https://images.microbadger.com/badges/image/cusspvz/node:4.2.2-onbuild.svg) `cusspvz/node:4.2.2-onbuild`

![layers](https://images.microbadger.com/badges/image/cusspvz/node:4.2.2-development.svg) `cusspvz/node:4.2.2-development`


* **4.2.1** - [![build status](https://travis-ci.org/cusspvz/node.docker.svg?branch=version%2F4.2.1)](http://travis-ci.org/cusspvz/node.docker)

![layers](https://images.microbadger.com/badges/image/cusspvz/node:4.2.1.svg) `cusspvz/node:4.2.1`

![layers](https://images.microbadger.com/badges/image/cusspvz/node:4.2.1-onbuild.svg) `cusspvz/node:4.2.1-onbuild`

![layers](https://images.microbadger.com/badges/image/cusspvz/node:4.2.1-development.svg) `cusspvz/node:4.2.1-development`


* **4.2.0** - [![build status](https://travis-ci.org/cusspvz/node.docker.svg?branch=version%2F4.2.0)](http://travis-ci.org/cusspvz/node.docker)

![layers](https://images.microbadger.com/badges/image/cusspvz/node:4.2.0.svg) `cusspvz/node:4.2.0`

![layers](https://images.microbadger.com/badges/image/cusspvz/node:4.2.0-onbuild.svg) `cusspvz/node:4.2.0-onbuild`

![layers](https://images.microbadger.com/badges/image/cusspvz/node:4.2.0-development.svg) `cusspvz/node:4.2.0-development`


* **4.1.2** - [![build status](https://travis-ci.org/cusspvz/node.docker.svg?branch=version%2F4.1.2)](http://travis-ci.org/cusspvz/node.docker)

![layers](https://images.microbadger.com/badges/image/cusspvz/node:4.1.2.svg) `cusspvz/node:4.1.2`

![layers](https://images.microbadger.com/badges/image/cusspvz/node:4.1.2-onbuild.svg) `cusspvz/node:4.1.2-onbuild`

![layers](https://images.microbadger.com/badges/image/cusspvz/node:4.1.2-development.svg) `cusspvz/node:4.1.2-development`


* **4.1.1** - [![build status](https://travis-ci.org/cusspvz/node.docker.svg?branch=version%2F4.1.1)](http://travis-ci.org/cusspvz/node.docker)

![layers](https://images.microbadger.com/badges/image/cusspvz/node:4.1.1.svg) `cusspvz/node:4.1.1`

![layers](https://images.microbadger.com/badges/image/cusspvz/node:4.1.1-onbuild.svg) `cusspvz/node:4.1.1-onbuild`

![layers](https://images.microbadger.com/badges/image/cusspvz/node:4.1.1-development.svg) `cusspvz/node:4.1.1-development`


* **4.1.0** - [![build status](https://travis-ci.org/cusspvz/node.docker.svg?branch=version%2F4.1.0)](http://travis-ci.org/cusspvz/node.docker)

![layers](https://images.microbadger.com/badges/image/cusspvz/node:4.1.0.svg) `cusspvz/node:4.1.0`

![layers](https://images.microbadger.com/badges/image/cusspvz/node:4.1.0-onbuild.svg) `cusspvz/node:4.1.0-onbuild`

![layers](https://images.microbadger.com/badges/image/cusspvz/node:4.1.0-development.svg) `cusspvz/node:4.1.0-development`


* **4.0.0** - [![build status](https://travis-ci.org/cusspvz/node.docker.svg?branch=version%2F4.0.0)](http://travis-ci.org/cusspvz/node.docker)

![layers](https://images.microbadger.com/badges/image/cusspvz/node:4.0.0.svg) `cusspvz/node:4.0.0`

![layers](https://images.microbadger.com/badges/image/cusspvz/node:4.0.0-onbuild.svg) `cusspvz/node:4.0.0-onbuild`

![layers](https://images.microbadger.com/badges/image/cusspvz/node:4.0.0-development.svg) `cusspvz/node:4.0.0-development`


* **0.12.15** - [![build status](https://travis-ci.org/cusspvz/node.docker.svg?branch=version%2F0.12.15)](http://travis-ci.org/cusspvz/node.docker)

![layers](https://images.microbadger.com/badges/image/cusspvz/node:0.12.15.svg) `cusspvz/node:0.12.15`

![layers](https://images.microbadger.com/badges/image/cusspvz/node:0.12.15-onbuild.svg) `cusspvz/node:0.12.15-onbuild`

![layers](https://images.microbadger.com/badges/image/cusspvz/node:0.12.15-development.svg) `cusspvz/node:0.12.15-development`


* **0.12.14** - [![build status](https://travis-ci.org/cusspvz/node.docker.svg?branch=version%2F0.12.14)](http://travis-ci.org/cusspvz/node.docker)

![layers](https://images.microbadger.com/badges/image/cusspvz/node:0.12.14.svg) `cusspvz/node:0.12.14`

![layers](https://images.microbadger.com/badges/image/cusspvz/node:0.12.14-onbuild.svg) `cusspvz/node:0.12.14-onbuild`

![layers](https://images.microbadger.com/badges/image/cusspvz/node:0.12.14-development.svg) `cusspvz/node:0.12.14-development`


* **0.12.13** - [![build status](https://travis-ci.org/cusspvz/node.docker.svg?branch=version%2F0.12.13)](http://travis-ci.org/cusspvz/node.docker)

![layers](https://images.microbadger.com/badges/image/cusspvz/node:0.12.13.svg) `cusspvz/node:0.12.13`

![layers](https://images.microbadger.com/badges/image/cusspvz/node:0.12.13-onbuild.svg) `cusspvz/node:0.12.13-onbuild`

![layers](https://images.microbadger.com/badges/image/cusspvz/node:0.12.13-development.svg) `cusspvz/node:0.12.13-development`


* **0.12.12** - [![build status](https://travis-ci.org/cusspvz/node.docker.svg?branch=version%2F0.12.12)](http://travis-ci.org/cusspvz/node.docker)

![layers](https://images.microbadger.com/badges/image/cusspvz/node:0.12.12.svg) `cusspvz/node:0.12.12`

![layers](https://images.microbadger.com/badges/image/cusspvz/node:0.12.12-onbuild.svg) `cusspvz/node:0.12.12-onbuild`

![layers](https://images.microbadger.com/badges/image/cusspvz/node:0.12.12-development.svg) `cusspvz/node:0.12.12-development`


* **0.12.11** - [![build status](https://travis-ci.org/cusspvz/node.docker.svg?branch=version%2F0.12.11)](http://travis-ci.org/cusspvz/node.docker)

![layers](https://images.microbadger.com/badges/image/cusspvz/node:0.12.11.svg) `cusspvz/node:0.12.11`

![layers](https://images.microbadger.com/badges/image/cusspvz/node:0.12.11-onbuild.svg) `cusspvz/node:0.12.11-onbuild`

![layers](https://images.microbadger.com/badges/image/cusspvz/node:0.12.11-development.svg) `cusspvz/node:0.12.11-development`


* **0.12.10** - [![build status](https://travis-ci.org/cusspvz/node.docker.svg?branch=version%2F0.12.10)](http://travis-ci.org/cusspvz/node.docker)

![layers](https://images.microbadger.com/badges/image/cusspvz/node:0.12.10.svg) `cusspvz/node:0.12.10`

![layers](https://images.microbadger.com/badges/image/cusspvz/node:0.12.10-onbuild.svg) `cusspvz/node:0.12.10-onbuild`

![layers](https://images.microbadger.com/badges/image/cusspvz/node:0.12.10-development.svg) `cusspvz/node:0.12.10-development`


* **0.12.9** - [![build status](https://travis-ci.org/cusspvz/node.docker.svg?branch=version%2F0.12.9)](http://travis-ci.org/cusspvz/node.docker)

![layers](https://images.microbadger.com/badges/image/cusspvz/node:0.12.9.svg) `cusspvz/node:0.12.9`

![layers](https://images.microbadger.com/badges/image/cusspvz/node:0.12.9-onbuild.svg) `cusspvz/node:0.12.9-onbuild`

![layers](https://images.microbadger.com/badges/image/cusspvz/node:0.12.9-development.svg) `cusspvz/node:0.12.9-development`


* **0.12.8** - [![build status](https://travis-ci.org/cusspvz/node.docker.svg?branch=version%2F0.12.8)](http://travis-ci.org/cusspvz/node.docker)

![layers](https://images.microbadger.com/badges/image/cusspvz/node:0.12.8.svg) `cusspvz/node:0.12.8`

![layers](https://images.microbadger.com/badges/image/cusspvz/node:0.12.8-onbuild.svg) `cusspvz/node:0.12.8-onbuild`

![layers](https://images.microbadger.com/badges/image/cusspvz/node:0.12.8-development.svg) `cusspvz/node:0.12.8-development`


* **0.12.7** - [![build status](https://travis-ci.org/cusspvz/node.docker.svg?branch=version%2F0.12.7)](http://travis-ci.org/cusspvz/node.docker)

![layers](https://images.microbadger.com/badges/image/cusspvz/node:0.12.7.svg) `cusspvz/node:0.12.7`

![layers](https://images.microbadger.com/badges/image/cusspvz/node:0.12.7-onbuild.svg) `cusspvz/node:0.12.7-onbuild`

![layers](https://images.microbadger.com/badges/image/cusspvz/node:0.12.7-development.svg) `cusspvz/node:0.12.7-development`


* **0.12.6** - [![build status](https://travis-ci.org/cusspvz/node.docker.svg?branch=version%2F0.12.6)](http://travis-ci.org/cusspvz/node.docker)

![layers](https://images.microbadger.com/badges/image/cusspvz/node:0.12.6.svg) `cusspvz/node:0.12.6`

![layers](https://images.microbadger.com/badges/image/cusspvz/node:0.12.6-onbuild.svg) `cusspvz/node:0.12.6-onbuild`

![layers](https://images.microbadger.com/badges/image/cusspvz/node:0.12.6-development.svg) `cusspvz/node:0.12.6-development`


* **0.12.5** - [![build status](https://travis-ci.org/cusspvz/node.docker.svg?branch=version%2F0.12.5)](http://travis-ci.org/cusspvz/node.docker)

![layers](https://images.microbadger.com/badges/image/cusspvz/node:0.12.5.svg) `cusspvz/node:0.12.5`

![layers](https://images.microbadger.com/badges/image/cusspvz/node:0.12.5-onbuild.svg) `cusspvz/node:0.12.5-onbuild`

![layers](https://images.microbadger.com/badges/image/cusspvz/node:0.12.5-development.svg) `cusspvz/node:0.12.5-development`


* **0.12.4** - [![build status](https://travis-ci.org/cusspvz/node.docker.svg?branch=version%2F0.12.4)](http://travis-ci.org/cusspvz/node.docker)

![layers](https://images.microbadger.com/badges/image/cusspvz/node:0.12.4.svg) `cusspvz/node:0.12.4`

![layers](https://images.microbadger.com/badges/image/cusspvz/node:0.12.4-onbuild.svg) `cusspvz/node:0.12.4-onbuild`

![layers](https://images.microbadger.com/badges/image/cusspvz/node:0.12.4-development.svg) `cusspvz/node:0.12.4-development`


* **0.12.3** - [![build status](https://travis-ci.org/cusspvz/node.docker.svg?branch=version%2F0.12.3)](http://travis-ci.org/cusspvz/node.docker)

![layers](https://images.microbadger.com/badges/image/cusspvz/node:0.12.3.svg) `cusspvz/node:0.12.3`

![layers](https://images.microbadger.com/badges/image/cusspvz/node:0.12.3-onbuild.svg) `cusspvz/node:0.12.3-onbuild`

![layers](https://images.microbadger.com/badges/image/cusspvz/node:0.12.3-development.svg) `cusspvz/node:0.12.3-development`


* **0.12.2** - [![build status](https://travis-ci.org/cusspvz/node.docker.svg?branch=version%2F0.12.2)](http://travis-ci.org/cusspvz/node.docker)

![layers](https://images.microbadger.com/badges/image/cusspvz/node:0.12.2.svg) `cusspvz/node:0.12.2`

![layers](https://images.microbadger.com/badges/image/cusspvz/node:0.12.2-onbuild.svg) `cusspvz/node:0.12.2-onbuild`

![layers](https://images.microbadger.com/badges/image/cusspvz/node:0.12.2-development.svg) `cusspvz/node:0.12.2-development`


* **0.12.1** - [![build status](https://travis-ci.org/cusspvz/node.docker.svg?branch=version%2F0.12.1)](http://travis-ci.org/cusspvz/node.docker)

![layers](https://images.microbadger.com/badges/image/cusspvz/node:0.12.1.svg) `cusspvz/node:0.12.1`

![layers](https://images.microbadger.com/badges/image/cusspvz/node:0.12.1-onbuild.svg) `cusspvz/node:0.12.1-onbuild`

![layers](https://images.microbadger.com/badges/image/cusspvz/node:0.12.1-development.svg) `cusspvz/node:0.12.1-development`


* **0.12.0** - [![build status](https://travis-ci.org/cusspvz/node.docker.svg?branch=version%2F0.12.0)](http://travis-ci.org/cusspvz/node.docker)

![layers](https://images.microbadger.com/badges/image/cusspvz/node:0.12.0.svg) `cusspvz/node:0.12.0`

![layers](https://images.microbadger.com/badges/image/cusspvz/node:0.12.0-onbuild.svg) `cusspvz/node:0.12.0-onbuild`

![layers](https://images.microbadger.com/badges/image/cusspvz/node:0.12.0-development.svg) `cusspvz/node:0.12.0-development`


* **0.11.16** - [![build status](https://travis-ci.org/cusspvz/node.docker.svg?branch=version%2F0.11.16)](http://travis-ci.org/cusspvz/node.docker)

![layers](https://images.microbadger.com/badges/image/cusspvz/node:0.11.16.svg) `cusspvz/node:0.11.16`

![layers](https://images.microbadger.com/badges/image/cusspvz/node:0.11.16-onbuild.svg) `cusspvz/node:0.11.16-onbuild`

![layers](https://images.microbadger.com/badges/image/cusspvz/node:0.11.16-development.svg) `cusspvz/node:0.11.16-development`


* **0.11.15** - [![build status](https://travis-ci.org/cusspvz/node.docker.svg?branch=version%2F0.11.15)](http://travis-ci.org/cusspvz/node.docker)

![layers](https://images.microbadger.com/badges/image/cusspvz/node:0.11.15.svg) `cusspvz/node:0.11.15`

![layers](https://images.microbadger.com/badges/image/cusspvz/node:0.11.15-onbuild.svg) `cusspvz/node:0.11.15-onbuild`

![layers](https://images.microbadger.com/badges/image/cusspvz/node:0.11.15-development.svg) `cusspvz/node:0.11.15-development`


* **0.11.14** - [![build status](https://travis-ci.org/cusspvz/node.docker.svg?branch=version%2F0.11.14)](http://travis-ci.org/cusspvz/node.docker)

![layers](https://images.microbadger.com/badges/image/cusspvz/node:0.11.14.svg) `cusspvz/node:0.11.14`

![layers](https://images.microbadger.com/badges/image/cusspvz/node:0.11.14-onbuild.svg) `cusspvz/node:0.11.14-onbuild`

![layers](https://images.microbadger.com/badges/image/cusspvz/node:0.11.14-development.svg) `cusspvz/node:0.11.14-development`


* **0.11.13** - [![build status](https://travis-ci.org/cusspvz/node.docker.svg?branch=version%2F0.11.13)](http://travis-ci.org/cusspvz/node.docker)

![layers](https://images.microbadger.com/badges/image/cusspvz/node:0.11.13.svg) `cusspvz/node:0.11.13`

![layers](https://images.microbadger.com/badges/image/cusspvz/node:0.11.13-onbuild.svg) `cusspvz/node:0.11.13-onbuild`

![layers](https://images.microbadger.com/badges/image/cusspvz/node:0.11.13-development.svg) `cusspvz/node:0.11.13-development`


* **0.11.12** - [![build status](https://travis-ci.org/cusspvz/node.docker.svg?branch=version%2F0.11.12)](http://travis-ci.org/cusspvz/node.docker)

![layers](https://images.microbadger.com/badges/image/cusspvz/node:0.11.12.svg) `cusspvz/node:0.11.12`

![layers](https://images.microbadger.com/badges/image/cusspvz/node:0.11.12-onbuild.svg) `cusspvz/node:0.11.12-onbuild`

![layers](https://images.microbadger.com/badges/image/cusspvz/node:0.11.12-development.svg) `cusspvz/node:0.11.12-development`


* **0.11.11** - [![build status](https://travis-ci.org/cusspvz/node.docker.svg?branch=version%2F0.11.11)](http://travis-ci.org/cusspvz/node.docker)

![layers](https://images.microbadger.com/badges/image/cusspvz/node:0.11.11.svg) `cusspvz/node:0.11.11`

![layers](https://images.microbadger.com/badges/image/cusspvz/node:0.11.11-onbuild.svg) `cusspvz/node:0.11.11-onbuild`

![layers](https://images.microbadger.com/badges/image/cusspvz/node:0.11.11-development.svg) `cusspvz/node:0.11.11-development`


* **0.11.10** - [![build status](https://travis-ci.org/cusspvz/node.docker.svg?branch=version%2F0.11.10)](http://travis-ci.org/cusspvz/node.docker)

![layers](https://images.microbadger.com/badges/image/cusspvz/node:0.11.10.svg) `cusspvz/node:0.11.10`

![layers](https://images.microbadger.com/badges/image/cusspvz/node:0.11.10-onbuild.svg) `cusspvz/node:0.11.10-onbuild`

![layers](https://images.microbadger.com/badges/image/cusspvz/node:0.11.10-development.svg) `cusspvz/node:0.11.10-development`


* **0.11.9** - [![build status](https://travis-ci.org/cusspvz/node.docker.svg?branch=version%2F0.11.9)](http://travis-ci.org/cusspvz/node.docker)

![layers](https://images.microbadger.com/badges/image/cusspvz/node:0.11.9.svg) `cusspvz/node:0.11.9`

![layers](https://images.microbadger.com/badges/image/cusspvz/node:0.11.9-onbuild.svg) `cusspvz/node:0.11.9-onbuild`

![layers](https://images.microbadger.com/badges/image/cusspvz/node:0.11.9-development.svg) `cusspvz/node:0.11.9-development`


* **0.11.8** - [![build status](https://travis-ci.org/cusspvz/node.docker.svg?branch=version%2F0.11.8)](http://travis-ci.org/cusspvz/node.docker)

![layers](https://images.microbadger.com/badges/image/cusspvz/node:0.11.8.svg) `cusspvz/node:0.11.8`

![layers](https://images.microbadger.com/badges/image/cusspvz/node:0.11.8-onbuild.svg) `cusspvz/node:0.11.8-onbuild`

![layers](https://images.microbadger.com/badges/image/cusspvz/node:0.11.8-development.svg) `cusspvz/node:0.11.8-development`


* **0.11.7** - [![build status](https://travis-ci.org/cusspvz/node.docker.svg?branch=version%2F0.11.7)](http://travis-ci.org/cusspvz/node.docker)

![layers](https://images.microbadger.com/badges/image/cusspvz/node:0.11.7.svg) `cusspvz/node:0.11.7`

![layers](https://images.microbadger.com/badges/image/cusspvz/node:0.11.7-onbuild.svg) `cusspvz/node:0.11.7-onbuild`

![layers](https://images.microbadger.com/badges/image/cusspvz/node:0.11.7-development.svg) `cusspvz/node:0.11.7-development`


* **0.11.6** - [![build status](https://travis-ci.org/cusspvz/node.docker.svg?branch=version%2F0.11.6)](http://travis-ci.org/cusspvz/node.docker)

![layers](https://images.microbadger.com/badges/image/cusspvz/node:0.11.6.svg) `cusspvz/node:0.11.6`

![layers](https://images.microbadger.com/badges/image/cusspvz/node:0.11.6-onbuild.svg) `cusspvz/node:0.11.6-onbuild`

![layers](https://images.microbadger.com/badges/image/cusspvz/node:0.11.6-development.svg) `cusspvz/node:0.11.6-development`


* **0.11.5** - [![build status](https://travis-ci.org/cusspvz/node.docker.svg?branch=version%2F0.11.5)](http://travis-ci.org/cusspvz/node.docker)

![layers](https://images.microbadger.com/badges/image/cusspvz/node:0.11.5.svg) `cusspvz/node:0.11.5`

![layers](https://images.microbadger.com/badges/image/cusspvz/node:0.11.5-onbuild.svg) `cusspvz/node:0.11.5-onbuild`

![layers](https://images.microbadger.com/badges/image/cusspvz/node:0.11.5-development.svg) `cusspvz/node:0.11.5-development`


* **0.11.4** - [![build status](https://travis-ci.org/cusspvz/node.docker.svg?branch=version%2F0.11.4)](http://travis-ci.org/cusspvz/node.docker)

![layers](https://images.microbadger.com/badges/image/cusspvz/node:0.11.4.svg) `cusspvz/node:0.11.4`

![layers](https://images.microbadger.com/badges/image/cusspvz/node:0.11.4-onbuild.svg) `cusspvz/node:0.11.4-onbuild`

![layers](https://images.microbadger.com/badges/image/cusspvz/node:0.11.4-development.svg) `cusspvz/node:0.11.4-development`


* **0.11.3** - [![build status](https://travis-ci.org/cusspvz/node.docker.svg?branch=version%2F0.11.3)](http://travis-ci.org/cusspvz/node.docker)

![layers](https://images.microbadger.com/badges/image/cusspvz/node:0.11.3.svg) `cusspvz/node:0.11.3`

![layers](https://images.microbadger.com/badges/image/cusspvz/node:0.11.3-onbuild.svg) `cusspvz/node:0.11.3-onbuild`

![layers](https://images.microbadger.com/badges/image/cusspvz/node:0.11.3-development.svg) `cusspvz/node:0.11.3-development`


* **0.11.2** - [![build status](https://travis-ci.org/cusspvz/node.docker.svg?branch=version%2F0.11.2)](http://travis-ci.org/cusspvz/node.docker)

![layers](https://images.microbadger.com/badges/image/cusspvz/node:0.11.2.svg) `cusspvz/node:0.11.2`

![layers](https://images.microbadger.com/badges/image/cusspvz/node:0.11.2-onbuild.svg) `cusspvz/node:0.11.2-onbuild`

![layers](https://images.microbadger.com/badges/image/cusspvz/node:0.11.2-development.svg) `cusspvz/node:0.11.2-development`


* **0.11.1** - [![build status](https://travis-ci.org/cusspvz/node.docker.svg?branch=version%2F0.11.1)](http://travis-ci.org/cusspvz/node.docker)

![layers](https://images.microbadger.com/badges/image/cusspvz/node:0.11.1.svg) `cusspvz/node:0.11.1`

![layers](https://images.microbadger.com/badges/image/cusspvz/node:0.11.1-onbuild.svg) `cusspvz/node:0.11.1-onbuild`

![layers](https://images.microbadger.com/badges/image/cusspvz/node:0.11.1-development.svg) `cusspvz/node:0.11.1-development`


* **0.11.0** - [![build status](https://travis-ci.org/cusspvz/node.docker.svg?branch=version%2F0.11.0)](http://travis-ci.org/cusspvz/node.docker)

![layers](https://images.microbadger.com/badges/image/cusspvz/node:0.11.0.svg) `cusspvz/node:0.11.0`

![layers](https://images.microbadger.com/badges/image/cusspvz/node:0.11.0-onbuild.svg) `cusspvz/node:0.11.0-onbuild`

![layers](https://images.microbadger.com/badges/image/cusspvz/node:0.11.0-development.svg) `cusspvz/node:0.11.0-development`


* **0.10.46** - [![build status](https://travis-ci.org/cusspvz/node.docker.svg?branch=version%2F0.10.46)](http://travis-ci.org/cusspvz/node.docker)

![layers](https://images.microbadger.com/badges/image/cusspvz/node:0.10.46.svg) `cusspvz/node:0.10.46`

![layers](https://images.microbadger.com/badges/image/cusspvz/node:0.10.46-onbuild.svg) `cusspvz/node:0.10.46-onbuild`

![layers](https://images.microbadger.com/badges/image/cusspvz/node:0.10.46-development.svg) `cusspvz/node:0.10.46-development`


* **0.10.45** - [![build status](https://travis-ci.org/cusspvz/node.docker.svg?branch=version%2F0.10.45)](http://travis-ci.org/cusspvz/node.docker)

![layers](https://images.microbadger.com/badges/image/cusspvz/node:0.10.45.svg) `cusspvz/node:0.10.45`

![layers](https://images.microbadger.com/badges/image/cusspvz/node:0.10.45-onbuild.svg) `cusspvz/node:0.10.45-onbuild`

![layers](https://images.microbadger.com/badges/image/cusspvz/node:0.10.45-development.svg) `cusspvz/node:0.10.45-development`


* **0.10.44** - [![build status](https://travis-ci.org/cusspvz/node.docker.svg?branch=version%2F0.10.44)](http://travis-ci.org/cusspvz/node.docker)

![layers](https://images.microbadger.com/badges/image/cusspvz/node:0.10.44.svg) `cusspvz/node:0.10.44`

![layers](https://images.microbadger.com/badges/image/cusspvz/node:0.10.44-onbuild.svg) `cusspvz/node:0.10.44-onbuild`

![layers](https://images.microbadger.com/badges/image/cusspvz/node:0.10.44-development.svg) `cusspvz/node:0.10.44-development`


* **0.10.43** - [![build status](https://travis-ci.org/cusspvz/node.docker.svg?branch=version%2F0.10.43)](http://travis-ci.org/cusspvz/node.docker)

![layers](https://images.microbadger.com/badges/image/cusspvz/node:0.10.43.svg) `cusspvz/node:0.10.43`

![layers](https://images.microbadger.com/badges/image/cusspvz/node:0.10.43-onbuild.svg) `cusspvz/node:0.10.43-onbuild`

![layers](https://images.microbadger.com/badges/image/cusspvz/node:0.10.43-development.svg) `cusspvz/node:0.10.43-development`


* **0.10.42** - [![build status](https://travis-ci.org/cusspvz/node.docker.svg?branch=version%2F0.10.42)](http://travis-ci.org/cusspvz/node.docker)

![layers](https://images.microbadger.com/badges/image/cusspvz/node:0.10.42.svg) `cusspvz/node:0.10.42`

![layers](https://images.microbadger.com/badges/image/cusspvz/node:0.10.42-onbuild.svg) `cusspvz/node:0.10.42-onbuild`

![layers](https://images.microbadger.com/badges/image/cusspvz/node:0.10.42-development.svg) `cusspvz/node:0.10.42-development`


* **0.10.41** - [![build status](https://travis-ci.org/cusspvz/node.docker.svg?branch=version%2F0.10.41)](http://travis-ci.org/cusspvz/node.docker)

![layers](https://images.microbadger.com/badges/image/cusspvz/node:0.10.41.svg) `cusspvz/node:0.10.41`

![layers](https://images.microbadger.com/badges/image/cusspvz/node:0.10.41-onbuild.svg) `cusspvz/node:0.10.41-onbuild`

![layers](https://images.microbadger.com/badges/image/cusspvz/node:0.10.41-development.svg) `cusspvz/node:0.10.41-development`


* **0.10.40** - [![build status](https://travis-ci.org/cusspvz/node.docker.svg?branch=version%2F0.10.40)](http://travis-ci.org/cusspvz/node.docker)

![layers](https://images.microbadger.com/badges/image/cusspvz/node:0.10.40.svg) `cusspvz/node:0.10.40`

![layers](https://images.microbadger.com/badges/image/cusspvz/node:0.10.40-onbuild.svg) `cusspvz/node:0.10.40-onbuild`

![layers](https://images.microbadger.com/badges/image/cusspvz/node:0.10.40-development.svg) `cusspvz/node:0.10.40-development`


* **0.10.39** - [![build status](https://travis-ci.org/cusspvz/node.docker.svg?branch=version%2F0.10.39)](http://travis-ci.org/cusspvz/node.docker)

![layers](https://images.microbadger.com/badges/image/cusspvz/node:0.10.39.svg) `cusspvz/node:0.10.39`

![layers](https://images.microbadger.com/badges/image/cusspvz/node:0.10.39-onbuild.svg) `cusspvz/node:0.10.39-onbuild`

![layers](https://images.microbadger.com/badges/image/cusspvz/node:0.10.39-development.svg) `cusspvz/node:0.10.39-development`


* **0.10.38** - [![build status](https://travis-ci.org/cusspvz/node.docker.svg?branch=version%2F0.10.38)](http://travis-ci.org/cusspvz/node.docker)

![layers](https://images.microbadger.com/badges/image/cusspvz/node:0.10.38.svg) `cusspvz/node:0.10.38`

![layers](https://images.microbadger.com/badges/image/cusspvz/node:0.10.38-onbuild.svg) `cusspvz/node:0.10.38-onbuild`

![layers](https://images.microbadger.com/badges/image/cusspvz/node:0.10.38-development.svg) `cusspvz/node:0.10.38-development`


* **0.10.37** - [![build status](https://travis-ci.org/cusspvz/node.docker.svg?branch=version%2F0.10.37)](http://travis-ci.org/cusspvz/node.docker)

![layers](https://images.microbadger.com/badges/image/cusspvz/node:0.10.37.svg) `cusspvz/node:0.10.37`

![layers](https://images.microbadger.com/badges/image/cusspvz/node:0.10.37-onbuild.svg) `cusspvz/node:0.10.37-onbuild`

![layers](https://images.microbadger.com/badges/image/cusspvz/node:0.10.37-development.svg) `cusspvz/node:0.10.37-development`


* **0.10.36** - [![build status](https://travis-ci.org/cusspvz/node.docker.svg?branch=version%2F0.10.36)](http://travis-ci.org/cusspvz/node.docker)

![layers](https://images.microbadger.com/badges/image/cusspvz/node:0.10.36.svg) `cusspvz/node:0.10.36`

![layers](https://images.microbadger.com/badges/image/cusspvz/node:0.10.36-onbuild.svg) `cusspvz/node:0.10.36-onbuild`

![layers](https://images.microbadger.com/badges/image/cusspvz/node:0.10.36-development.svg) `cusspvz/node:0.10.36-development`


* **0.10.35** - [![build status](https://travis-ci.org/cusspvz/node.docker.svg?branch=version%2F0.10.35)](http://travis-ci.org/cusspvz/node.docker)

![layers](https://images.microbadger.com/badges/image/cusspvz/node:0.10.35.svg) `cusspvz/node:0.10.35`

![layers](https://images.microbadger.com/badges/image/cusspvz/node:0.10.35-onbuild.svg) `cusspvz/node:0.10.35-onbuild`

![layers](https://images.microbadger.com/badges/image/cusspvz/node:0.10.35-development.svg) `cusspvz/node:0.10.35-development`


* **0.10.34** - [![build status](https://travis-ci.org/cusspvz/node.docker.svg?branch=version%2F0.10.34)](http://travis-ci.org/cusspvz/node.docker)

![layers](https://images.microbadger.com/badges/image/cusspvz/node:0.10.34.svg) `cusspvz/node:0.10.34`

![layers](https://images.microbadger.com/badges/image/cusspvz/node:0.10.34-onbuild.svg) `cusspvz/node:0.10.34-onbuild`

![layers](https://images.microbadger.com/badges/image/cusspvz/node:0.10.34-development.svg) `cusspvz/node:0.10.34-development`


* **0.10.33** - [![build status](https://travis-ci.org/cusspvz/node.docker.svg?branch=version%2F0.10.33)](http://travis-ci.org/cusspvz/node.docker)

![layers](https://images.microbadger.com/badges/image/cusspvz/node:0.10.33.svg) `cusspvz/node:0.10.33`

![layers](https://images.microbadger.com/badges/image/cusspvz/node:0.10.33-onbuild.svg) `cusspvz/node:0.10.33-onbuild`

![layers](https://images.microbadger.com/badges/image/cusspvz/node:0.10.33-development.svg) `cusspvz/node:0.10.33-development`


* **0.10.32** - [![build status](https://travis-ci.org/cusspvz/node.docker.svg?branch=version%2F0.10.32)](http://travis-ci.org/cusspvz/node.docker)

![layers](https://images.microbadger.com/badges/image/cusspvz/node:0.10.32.svg) `cusspvz/node:0.10.32`

![layers](https://images.microbadger.com/badges/image/cusspvz/node:0.10.32-onbuild.svg) `cusspvz/node:0.10.32-onbuild`

![layers](https://images.microbadger.com/badges/image/cusspvz/node:0.10.32-development.svg) `cusspvz/node:0.10.32-development`


* **0.10.31** - [![build status](https://travis-ci.org/cusspvz/node.docker.svg?branch=version%2F0.10.31)](http://travis-ci.org/cusspvz/node.docker)

![layers](https://images.microbadger.com/badges/image/cusspvz/node:0.10.31.svg) `cusspvz/node:0.10.31`

![layers](https://images.microbadger.com/badges/image/cusspvz/node:0.10.31-onbuild.svg) `cusspvz/node:0.10.31-onbuild`

![layers](https://images.microbadger.com/badges/image/cusspvz/node:0.10.31-development.svg) `cusspvz/node:0.10.31-development`


* **0.10.30** - [![build status](https://travis-ci.org/cusspvz/node.docker.svg?branch=version%2F0.10.30)](http://travis-ci.org/cusspvz/node.docker)

![layers](https://images.microbadger.com/badges/image/cusspvz/node:0.10.30.svg) `cusspvz/node:0.10.30`

![layers](https://images.microbadger.com/badges/image/cusspvz/node:0.10.30-onbuild.svg) `cusspvz/node:0.10.30-onbuild`

![layers](https://images.microbadger.com/badges/image/cusspvz/node:0.10.30-development.svg) `cusspvz/node:0.10.30-development`


* **0.10.29** - [![build status](https://travis-ci.org/cusspvz/node.docker.svg?branch=version%2F0.10.29)](http://travis-ci.org/cusspvz/node.docker)

![layers](https://images.microbadger.com/badges/image/cusspvz/node:0.10.29.svg) `cusspvz/node:0.10.29`

![layers](https://images.microbadger.com/badges/image/cusspvz/node:0.10.29-onbuild.svg) `cusspvz/node:0.10.29-onbuild`

![layers](https://images.microbadger.com/badges/image/cusspvz/node:0.10.29-development.svg) `cusspvz/node:0.10.29-development`


* **0.10.28** - [![build status](https://travis-ci.org/cusspvz/node.docker.svg?branch=version%2F0.10.28)](http://travis-ci.org/cusspvz/node.docker)

![layers](https://images.microbadger.com/badges/image/cusspvz/node:0.10.28.svg) `cusspvz/node:0.10.28`

![layers](https://images.microbadger.com/badges/image/cusspvz/node:0.10.28-onbuild.svg) `cusspvz/node:0.10.28-onbuild`

![layers](https://images.microbadger.com/badges/image/cusspvz/node:0.10.28-development.svg) `cusspvz/node:0.10.28-development`


* **0.10.27** - [![build status](https://travis-ci.org/cusspvz/node.docker.svg?branch=version%2F0.10.27)](http://travis-ci.org/cusspvz/node.docker)

![layers](https://images.microbadger.com/badges/image/cusspvz/node:0.10.27.svg) `cusspvz/node:0.10.27`

![layers](https://images.microbadger.com/badges/image/cusspvz/node:0.10.27-onbuild.svg) `cusspvz/node:0.10.27-onbuild`

![layers](https://images.microbadger.com/badges/image/cusspvz/node:0.10.27-development.svg) `cusspvz/node:0.10.27-development`


* **0.10.26** - [![build status](https://travis-ci.org/cusspvz/node.docker.svg?branch=version%2F0.10.26)](http://travis-ci.org/cusspvz/node.docker)

![layers](https://images.microbadger.com/badges/image/cusspvz/node:0.10.26.svg) `cusspvz/node:0.10.26`

![layers](https://images.microbadger.com/badges/image/cusspvz/node:0.10.26-onbuild.svg) `cusspvz/node:0.10.26-onbuild`

![layers](https://images.microbadger.com/badges/image/cusspvz/node:0.10.26-development.svg) `cusspvz/node:0.10.26-development`


* **0.10.25** - [![build status](https://travis-ci.org/cusspvz/node.docker.svg?branch=version%2F0.10.25)](http://travis-ci.org/cusspvz/node.docker)

![layers](https://images.microbadger.com/badges/image/cusspvz/node:0.10.25.svg) `cusspvz/node:0.10.25`

![layers](https://images.microbadger.com/badges/image/cusspvz/node:0.10.25-onbuild.svg) `cusspvz/node:0.10.25-onbuild`

![layers](https://images.microbadger.com/badges/image/cusspvz/node:0.10.25-development.svg) `cusspvz/node:0.10.25-development`


* **0.10.24** - [![build status](https://travis-ci.org/cusspvz/node.docker.svg?branch=version%2F0.10.24)](http://travis-ci.org/cusspvz/node.docker)

![layers](https://images.microbadger.com/badges/image/cusspvz/node:0.10.24.svg) `cusspvz/node:0.10.24`

![layers](https://images.microbadger.com/badges/image/cusspvz/node:0.10.24-onbuild.svg) `cusspvz/node:0.10.24-onbuild`

![layers](https://images.microbadger.com/badges/image/cusspvz/node:0.10.24-development.svg) `cusspvz/node:0.10.24-development`


* **0.10.23** - [![build status](https://travis-ci.org/cusspvz/node.docker.svg?branch=version%2F0.10.23)](http://travis-ci.org/cusspvz/node.docker)

![layers](https://images.microbadger.com/badges/image/cusspvz/node:0.10.23.svg) `cusspvz/node:0.10.23`

![layers](https://images.microbadger.com/badges/image/cusspvz/node:0.10.23-onbuild.svg) `cusspvz/node:0.10.23-onbuild`

![layers](https://images.microbadger.com/badges/image/cusspvz/node:0.10.23-development.svg) `cusspvz/node:0.10.23-development`


* **0.10.22** - [![build status](https://travis-ci.org/cusspvz/node.docker.svg?branch=version%2F0.10.22)](http://travis-ci.org/cusspvz/node.docker)

![layers](https://images.microbadger.com/badges/image/cusspvz/node:0.10.22.svg) `cusspvz/node:0.10.22`

![layers](https://images.microbadger.com/badges/image/cusspvz/node:0.10.22-onbuild.svg) `cusspvz/node:0.10.22-onbuild`

![layers](https://images.microbadger.com/badges/image/cusspvz/node:0.10.22-development.svg) `cusspvz/node:0.10.22-development`


* **0.10.21** - [![build status](https://travis-ci.org/cusspvz/node.docker.svg?branch=version%2F0.10.21)](http://travis-ci.org/cusspvz/node.docker)

![layers](https://images.microbadger.com/badges/image/cusspvz/node:0.10.21.svg) `cusspvz/node:0.10.21`

![layers](https://images.microbadger.com/badges/image/cusspvz/node:0.10.21-onbuild.svg) `cusspvz/node:0.10.21-onbuild`

![layers](https://images.microbadger.com/badges/image/cusspvz/node:0.10.21-development.svg) `cusspvz/node:0.10.21-development`


* **0.10.20** - [![build status](https://travis-ci.org/cusspvz/node.docker.svg?branch=version%2F0.10.20)](http://travis-ci.org/cusspvz/node.docker)

![layers](https://images.microbadger.com/badges/image/cusspvz/node:0.10.20.svg) `cusspvz/node:0.10.20`

![layers](https://images.microbadger.com/badges/image/cusspvz/node:0.10.20-onbuild.svg) `cusspvz/node:0.10.20-onbuild`

![layers](https://images.microbadger.com/badges/image/cusspvz/node:0.10.20-development.svg) `cusspvz/node:0.10.20-development`


* **0.10.19** - [![build status](https://travis-ci.org/cusspvz/node.docker.svg?branch=version%2F0.10.19)](http://travis-ci.org/cusspvz/node.docker)

![layers](https://images.microbadger.com/badges/image/cusspvz/node:0.10.19.svg) `cusspvz/node:0.10.19`

![layers](https://images.microbadger.com/badges/image/cusspvz/node:0.10.19-onbuild.svg) `cusspvz/node:0.10.19-onbuild`

![layers](https://images.microbadger.com/badges/image/cusspvz/node:0.10.19-development.svg) `cusspvz/node:0.10.19-development`


* **0.10.18** - [![build status](https://travis-ci.org/cusspvz/node.docker.svg?branch=version%2F0.10.18)](http://travis-ci.org/cusspvz/node.docker)

![layers](https://images.microbadger.com/badges/image/cusspvz/node:0.10.18.svg) `cusspvz/node:0.10.18`

![layers](https://images.microbadger.com/badges/image/cusspvz/node:0.10.18-onbuild.svg) `cusspvz/node:0.10.18-onbuild`

![layers](https://images.microbadger.com/badges/image/cusspvz/node:0.10.18-development.svg) `cusspvz/node:0.10.18-development`


* **0.10.17** - [![build status](https://travis-ci.org/cusspvz/node.docker.svg?branch=version%2F0.10.17)](http://travis-ci.org/cusspvz/node.docker)

![layers](https://images.microbadger.com/badges/image/cusspvz/node:0.10.17.svg) `cusspvz/node:0.10.17`

![layers](https://images.microbadger.com/badges/image/cusspvz/node:0.10.17-onbuild.svg) `cusspvz/node:0.10.17-onbuild`

![layers](https://images.microbadger.com/badges/image/cusspvz/node:0.10.17-development.svg) `cusspvz/node:0.10.17-development`


* **0.10.16** - [![build status](https://travis-ci.org/cusspvz/node.docker.svg?branch=version%2F0.10.16)](http://travis-ci.org/cusspvz/node.docker)

![layers](https://images.microbadger.com/badges/image/cusspvz/node:0.10.16.svg) `cusspvz/node:0.10.16`

![layers](https://images.microbadger.com/badges/image/cusspvz/node:0.10.16-onbuild.svg) `cusspvz/node:0.10.16-onbuild`

![layers](https://images.microbadger.com/badges/image/cusspvz/node:0.10.16-development.svg) `cusspvz/node:0.10.16-development`


* **0.10.15** - [![build status](https://travis-ci.org/cusspvz/node.docker.svg?branch=version%2F0.10.15)](http://travis-ci.org/cusspvz/node.docker)

![layers](https://images.microbadger.com/badges/image/cusspvz/node:0.10.15.svg) `cusspvz/node:0.10.15`

![layers](https://images.microbadger.com/badges/image/cusspvz/node:0.10.15-onbuild.svg) `cusspvz/node:0.10.15-onbuild`

![layers](https://images.microbadger.com/badges/image/cusspvz/node:0.10.15-development.svg) `cusspvz/node:0.10.15-development`


* **0.10.14** - [![build status](https://travis-ci.org/cusspvz/node.docker.svg?branch=version%2F0.10.14)](http://travis-ci.org/cusspvz/node.docker)

![layers](https://images.microbadger.com/badges/image/cusspvz/node:0.10.14.svg) `cusspvz/node:0.10.14`

![layers](https://images.microbadger.com/badges/image/cusspvz/node:0.10.14-onbuild.svg) `cusspvz/node:0.10.14-onbuild`

![layers](https://images.microbadger.com/badges/image/cusspvz/node:0.10.14-development.svg) `cusspvz/node:0.10.14-development`


* **0.10.13** - [![build status](https://travis-ci.org/cusspvz/node.docker.svg?branch=version%2F0.10.13)](http://travis-ci.org/cusspvz/node.docker)

![layers](https://images.microbadger.com/badges/image/cusspvz/node:0.10.13.svg) `cusspvz/node:0.10.13`

![layers](https://images.microbadger.com/badges/image/cusspvz/node:0.10.13-onbuild.svg) `cusspvz/node:0.10.13-onbuild`

![layers](https://images.microbadger.com/badges/image/cusspvz/node:0.10.13-development.svg) `cusspvz/node:0.10.13-development`


* **0.10.12** - [![build status](https://travis-ci.org/cusspvz/node.docker.svg?branch=version%2F0.10.12)](http://travis-ci.org/cusspvz/node.docker)

![layers](https://images.microbadger.com/badges/image/cusspvz/node:0.10.12.svg) `cusspvz/node:0.10.12`

![layers](https://images.microbadger.com/badges/image/cusspvz/node:0.10.12-onbuild.svg) `cusspvz/node:0.10.12-onbuild`

![layers](https://images.microbadger.com/badges/image/cusspvz/node:0.10.12-development.svg) `cusspvz/node:0.10.12-development`


* **0.10.11** - [![build status](https://travis-ci.org/cusspvz/node.docker.svg?branch=version%2F0.10.11)](http://travis-ci.org/cusspvz/node.docker)

![layers](https://images.microbadger.com/badges/image/cusspvz/node:0.10.11.svg) `cusspvz/node:0.10.11`

![layers](https://images.microbadger.com/badges/image/cusspvz/node:0.10.11-onbuild.svg) `cusspvz/node:0.10.11-onbuild`

![layers](https://images.microbadger.com/badges/image/cusspvz/node:0.10.11-development.svg) `cusspvz/node:0.10.11-development`


* **0.10.10** - [![build status](https://travis-ci.org/cusspvz/node.docker.svg?branch=version%2F0.10.10)](http://travis-ci.org/cusspvz/node.docker)

![layers](https://images.microbadger.com/badges/image/cusspvz/node:0.10.10.svg) `cusspvz/node:0.10.10`

![layers](https://images.microbadger.com/badges/image/cusspvz/node:0.10.10-onbuild.svg) `cusspvz/node:0.10.10-onbuild`

![layers](https://images.microbadger.com/badges/image/cusspvz/node:0.10.10-development.svg) `cusspvz/node:0.10.10-development`


* **0.10.9** - [![build status](https://travis-ci.org/cusspvz/node.docker.svg?branch=version%2F0.10.9)](http://travis-ci.org/cusspvz/node.docker)

![layers](https://images.microbadger.com/badges/image/cusspvz/node:0.10.9.svg) `cusspvz/node:0.10.9`

![layers](https://images.microbadger.com/badges/image/cusspvz/node:0.10.9-onbuild.svg) `cusspvz/node:0.10.9-onbuild`

![layers](https://images.microbadger.com/badges/image/cusspvz/node:0.10.9-development.svg) `cusspvz/node:0.10.9-development`


* **0.10.8** - [![build status](https://travis-ci.org/cusspvz/node.docker.svg?branch=version%2F0.10.8)](http://travis-ci.org/cusspvz/node.docker)

![layers](https://images.microbadger.com/badges/image/cusspvz/node:0.10.8.svg) `cusspvz/node:0.10.8`

![layers](https://images.microbadger.com/badges/image/cusspvz/node:0.10.8-onbuild.svg) `cusspvz/node:0.10.8-onbuild`

![layers](https://images.microbadger.com/badges/image/cusspvz/node:0.10.8-development.svg) `cusspvz/node:0.10.8-development`


* **0.10.7** - [![build status](https://travis-ci.org/cusspvz/node.docker.svg?branch=version%2F0.10.7)](http://travis-ci.org/cusspvz/node.docker)

![layers](https://images.microbadger.com/badges/image/cusspvz/node:0.10.7.svg) `cusspvz/node:0.10.7`

![layers](https://images.microbadger.com/badges/image/cusspvz/node:0.10.7-onbuild.svg) `cusspvz/node:0.10.7-onbuild`

![layers](https://images.microbadger.com/badges/image/cusspvz/node:0.10.7-development.svg) `cusspvz/node:0.10.7-development`


* **0.10.6** - [![build status](https://travis-ci.org/cusspvz/node.docker.svg?branch=version%2F0.10.6)](http://travis-ci.org/cusspvz/node.docker)

![layers](https://images.microbadger.com/badges/image/cusspvz/node:0.10.6.svg) `cusspvz/node:0.10.6`

![layers](https://images.microbadger.com/badges/image/cusspvz/node:0.10.6-onbuild.svg) `cusspvz/node:0.10.6-onbuild`

![layers](https://images.microbadger.com/badges/image/cusspvz/node:0.10.6-development.svg) `cusspvz/node:0.10.6-development`


* **0.10.5** - [![build status](https://travis-ci.org/cusspvz/node.docker.svg?branch=version%2F0.10.5)](http://travis-ci.org/cusspvz/node.docker)

![layers](https://images.microbadger.com/badges/image/cusspvz/node:0.10.5.svg) `cusspvz/node:0.10.5`

![layers](https://images.microbadger.com/badges/image/cusspvz/node:0.10.5-onbuild.svg) `cusspvz/node:0.10.5-onbuild`

![layers](https://images.microbadger.com/badges/image/cusspvz/node:0.10.5-development.svg) `cusspvz/node:0.10.5-development`


* **0.10.4** - [![build status](https://travis-ci.org/cusspvz/node.docker.svg?branch=version%2F0.10.4)](http://travis-ci.org/cusspvz/node.docker)

![layers](https://images.microbadger.com/badges/image/cusspvz/node:0.10.4.svg) `cusspvz/node:0.10.4`

![layers](https://images.microbadger.com/badges/image/cusspvz/node:0.10.4-onbuild.svg) `cusspvz/node:0.10.4-onbuild`

![layers](https://images.microbadger.com/badges/image/cusspvz/node:0.10.4-development.svg) `cusspvz/node:0.10.4-development`


* **0.10.3** - [![build status](https://travis-ci.org/cusspvz/node.docker.svg?branch=version%2F0.10.3)](http://travis-ci.org/cusspvz/node.docker)

![layers](https://images.microbadger.com/badges/image/cusspvz/node:0.10.3.svg) `cusspvz/node:0.10.3`

![layers](https://images.microbadger.com/badges/image/cusspvz/node:0.10.3-onbuild.svg) `cusspvz/node:0.10.3-onbuild`

![layers](https://images.microbadger.com/badges/image/cusspvz/node:0.10.3-development.svg) `cusspvz/node:0.10.3-development`


* **0.10.2** - [![build status](https://travis-ci.org/cusspvz/node.docker.svg?branch=version%2F0.10.2)](http://travis-ci.org/cusspvz/node.docker)

![layers](https://images.microbadger.com/badges/image/cusspvz/node:0.10.2.svg) `cusspvz/node:0.10.2`

![layers](https://images.microbadger.com/badges/image/cusspvz/node:0.10.2-onbuild.svg) `cusspvz/node:0.10.2-onbuild`

![layers](https://images.microbadger.com/badges/image/cusspvz/node:0.10.2-development.svg) `cusspvz/node:0.10.2-development`


* **0.10.1** - [![build status](https://travis-ci.org/cusspvz/node.docker.svg?branch=version%2F0.10.1)](http://travis-ci.org/cusspvz/node.docker)

![layers](https://images.microbadger.com/badges/image/cusspvz/node:0.10.1.svg) `cusspvz/node:0.10.1`

![layers](https://images.microbadger.com/badges/image/cusspvz/node:0.10.1-onbuild.svg) `cusspvz/node:0.10.1-onbuild`

![layers](https://images.microbadger.com/badges/image/cusspvz/node:0.10.1-development.svg) `cusspvz/node:0.10.1-development`


* **0.10.0** - [![build status](https://travis-ci.org/cusspvz/node.docker.svg?branch=version%2F0.10.0)](http://travis-ci.org/cusspvz/node.docker)

![layers](https://images.microbadger.com/badges/image/cusspvz/node:0.10.0.svg) `cusspvz/node:0.10.0`

![layers](https://images.microbadger.com/badges/image/cusspvz/node:0.10.0-onbuild.svg) `cusspvz/node:0.10.0-onbuild`

![layers](https://images.microbadger.com/badges/image/cusspvz/node:0.10.0-development.svg) `cusspvz/node:0.10.0-development`


* **0.9.12** - [![build status](https://travis-ci.org/cusspvz/node.docker.svg?branch=version%2F0.9.12)](http://travis-ci.org/cusspvz/node.docker)

![layers](https://images.microbadger.com/badges/image/cusspvz/node:0.9.12.svg) `cusspvz/node:0.9.12`

![layers](https://images.microbadger.com/badges/image/cusspvz/node:0.9.12-onbuild.svg) `cusspvz/node:0.9.12-onbuild`

![layers](https://images.microbadger.com/badges/image/cusspvz/node:0.9.12-development.svg) `cusspvz/node:0.9.12-development`


* **0.9.11** - [![build status](https://travis-ci.org/cusspvz/node.docker.svg?branch=version%2F0.9.11)](http://travis-ci.org/cusspvz/node.docker)

![layers](https://images.microbadger.com/badges/image/cusspvz/node:0.9.11.svg) `cusspvz/node:0.9.11`

![layers](https://images.microbadger.com/badges/image/cusspvz/node:0.9.11-onbuild.svg) `cusspvz/node:0.9.11-onbuild`

![layers](https://images.microbadger.com/badges/image/cusspvz/node:0.9.11-development.svg) `cusspvz/node:0.9.11-development`


* **0.9.10** - [![build status](https://travis-ci.org/cusspvz/node.docker.svg?branch=version%2F0.9.10)](http://travis-ci.org/cusspvz/node.docker)

![layers](https://images.microbadger.com/badges/image/cusspvz/node:0.9.10.svg) `cusspvz/node:0.9.10`

![layers](https://images.microbadger.com/badges/image/cusspvz/node:0.9.10-onbuild.svg) `cusspvz/node:0.9.10-onbuild`

![layers](https://images.microbadger.com/badges/image/cusspvz/node:0.9.10-development.svg) `cusspvz/node:0.9.10-development`


* **0.9.9** - [![build status](https://travis-ci.org/cusspvz/node.docker.svg?branch=version%2F0.9.9)](http://travis-ci.org/cusspvz/node.docker)

![layers](https://images.microbadger.com/badges/image/cusspvz/node:0.9.9.svg) `cusspvz/node:0.9.9`

![layers](https://images.microbadger.com/badges/image/cusspvz/node:0.9.9-onbuild.svg) `cusspvz/node:0.9.9-onbuild`

![layers](https://images.microbadger.com/badges/image/cusspvz/node:0.9.9-development.svg) `cusspvz/node:0.9.9-development`


* **0.9.8** - [![build status](https://travis-ci.org/cusspvz/node.docker.svg?branch=version%2F0.9.8)](http://travis-ci.org/cusspvz/node.docker)

![layers](https://images.microbadger.com/badges/image/cusspvz/node:0.9.8.svg) `cusspvz/node:0.9.8`

![layers](https://images.microbadger.com/badges/image/cusspvz/node:0.9.8-onbuild.svg) `cusspvz/node:0.9.8-onbuild`

![layers](https://images.microbadger.com/badges/image/cusspvz/node:0.9.8-development.svg) `cusspvz/node:0.9.8-development`


* **0.9.7** - [![build status](https://travis-ci.org/cusspvz/node.docker.svg?branch=version%2F0.9.7)](http://travis-ci.org/cusspvz/node.docker)

![layers](https://images.microbadger.com/badges/image/cusspvz/node:0.9.7.svg) `cusspvz/node:0.9.7`

![layers](https://images.microbadger.com/badges/image/cusspvz/node:0.9.7-onbuild.svg) `cusspvz/node:0.9.7-onbuild`

![layers](https://images.microbadger.com/badges/image/cusspvz/node:0.9.7-development.svg) `cusspvz/node:0.9.7-development`


* **0.9.6** - [![build status](https://travis-ci.org/cusspvz/node.docker.svg?branch=version%2F0.9.6)](http://travis-ci.org/cusspvz/node.docker)

![layers](https://images.microbadger.com/badges/image/cusspvz/node:0.9.6.svg) `cusspvz/node:0.9.6`

![layers](https://images.microbadger.com/badges/image/cusspvz/node:0.9.6-onbuild.svg) `cusspvz/node:0.9.6-onbuild`

![layers](https://images.microbadger.com/badges/image/cusspvz/node:0.9.6-development.svg) `cusspvz/node:0.9.6-development`


* **0.9.5** - [![build status](https://travis-ci.org/cusspvz/node.docker.svg?branch=version%2F0.9.5)](http://travis-ci.org/cusspvz/node.docker)

![layers](https://images.microbadger.com/badges/image/cusspvz/node:0.9.5.svg) `cusspvz/node:0.9.5`

![layers](https://images.microbadger.com/badges/image/cusspvz/node:0.9.5-onbuild.svg) `cusspvz/node:0.9.5-onbuild`

![layers](https://images.microbadger.com/badges/image/cusspvz/node:0.9.5-development.svg) `cusspvz/node:0.9.5-development`


* **0.9.4** - [![build status](https://travis-ci.org/cusspvz/node.docker.svg?branch=version%2F0.9.4)](http://travis-ci.org/cusspvz/node.docker)

![layers](https://images.microbadger.com/badges/image/cusspvz/node:0.9.4.svg) `cusspvz/node:0.9.4`

![layers](https://images.microbadger.com/badges/image/cusspvz/node:0.9.4-onbuild.svg) `cusspvz/node:0.9.4-onbuild`

![layers](https://images.microbadger.com/badges/image/cusspvz/node:0.9.4-development.svg) `cusspvz/node:0.9.4-development`


* **0.9.3** - [![build status](https://travis-ci.org/cusspvz/node.docker.svg?branch=version%2F0.9.3)](http://travis-ci.org/cusspvz/node.docker)

![layers](https://images.microbadger.com/badges/image/cusspvz/node:0.9.3.svg) `cusspvz/node:0.9.3`

![layers](https://images.microbadger.com/badges/image/cusspvz/node:0.9.3-onbuild.svg) `cusspvz/node:0.9.3-onbuild`

![layers](https://images.microbadger.com/badges/image/cusspvz/node:0.9.3-development.svg) `cusspvz/node:0.9.3-development`


* **0.9.2** - [![build status](https://travis-ci.org/cusspvz/node.docker.svg?branch=version%2F0.9.2)](http://travis-ci.org/cusspvz/node.docker)

![layers](https://images.microbadger.com/badges/image/cusspvz/node:0.9.2.svg) `cusspvz/node:0.9.2`

![layers](https://images.microbadger.com/badges/image/cusspvz/node:0.9.2-onbuild.svg) `cusspvz/node:0.9.2-onbuild`

![layers](https://images.microbadger.com/badges/image/cusspvz/node:0.9.2-development.svg) `cusspvz/node:0.9.2-development`


* **0.9.1** - [![build status](https://travis-ci.org/cusspvz/node.docker.svg?branch=version%2F0.9.1)](http://travis-ci.org/cusspvz/node.docker)

![layers](https://images.microbadger.com/badges/image/cusspvz/node:0.9.1.svg) `cusspvz/node:0.9.1`

![layers](https://images.microbadger.com/badges/image/cusspvz/node:0.9.1-onbuild.svg) `cusspvz/node:0.9.1-onbuild`

![layers](https://images.microbadger.com/badges/image/cusspvz/node:0.9.1-development.svg) `cusspvz/node:0.9.1-development`


* **0.9.0** - [![build status](https://travis-ci.org/cusspvz/node.docker.svg?branch=version%2F0.9.0)](http://travis-ci.org/cusspvz/node.docker)

![layers](https://images.microbadger.com/badges/image/cusspvz/node:0.9.0.svg) `cusspvz/node:0.9.0`

![layers](https://images.microbadger.com/badges/image/cusspvz/node:0.9.0-onbuild.svg) `cusspvz/node:0.9.0-onbuild`

![layers](https://images.microbadger.com/badges/image/cusspvz/node:0.9.0-development.svg) `cusspvz/node:0.9.0-development`


* **0.8.28** - [![build status](https://travis-ci.org/cusspvz/node.docker.svg?branch=version%2F0.8.28)](http://travis-ci.org/cusspvz/node.docker)

![layers](https://images.microbadger.com/badges/image/cusspvz/node:0.8.28.svg) `cusspvz/node:0.8.28`

![layers](https://images.microbadger.com/badges/image/cusspvz/node:0.8.28-onbuild.svg) `cusspvz/node:0.8.28-onbuild`

![layers](https://images.microbadger.com/badges/image/cusspvz/node:0.8.28-development.svg) `cusspvz/node:0.8.28-development`


* **0.8.27** - [![build status](https://travis-ci.org/cusspvz/node.docker.svg?branch=version%2F0.8.27)](http://travis-ci.org/cusspvz/node.docker)

![layers](https://images.microbadger.com/badges/image/cusspvz/node:0.8.27.svg) `cusspvz/node:0.8.27`

![layers](https://images.microbadger.com/badges/image/cusspvz/node:0.8.27-onbuild.svg) `cusspvz/node:0.8.27-onbuild`

![layers](https://images.microbadger.com/badges/image/cusspvz/node:0.8.27-development.svg) `cusspvz/node:0.8.27-development`


* **0.8.26** - [![build status](https://travis-ci.org/cusspvz/node.docker.svg?branch=version%2F0.8.26)](http://travis-ci.org/cusspvz/node.docker)

![layers](https://images.microbadger.com/badges/image/cusspvz/node:0.8.26.svg) `cusspvz/node:0.8.26`

![layers](https://images.microbadger.com/badges/image/cusspvz/node:0.8.26-onbuild.svg) `cusspvz/node:0.8.26-onbuild`

![layers](https://images.microbadger.com/badges/image/cusspvz/node:0.8.26-development.svg) `cusspvz/node:0.8.26-development`


* **0.8.25** - [![build status](https://travis-ci.org/cusspvz/node.docker.svg?branch=version%2F0.8.25)](http://travis-ci.org/cusspvz/node.docker)

![layers](https://images.microbadger.com/badges/image/cusspvz/node:0.8.25.svg) `cusspvz/node:0.8.25`

![layers](https://images.microbadger.com/badges/image/cusspvz/node:0.8.25-onbuild.svg) `cusspvz/node:0.8.25-onbuild`

![layers](https://images.microbadger.com/badges/image/cusspvz/node:0.8.25-development.svg) `cusspvz/node:0.8.25-development`


* **0.8.24** - [![build status](https://travis-ci.org/cusspvz/node.docker.svg?branch=version%2F0.8.24)](http://travis-ci.org/cusspvz/node.docker)

![layers](https://images.microbadger.com/badges/image/cusspvz/node:0.8.24.svg) `cusspvz/node:0.8.24`

![layers](https://images.microbadger.com/badges/image/cusspvz/node:0.8.24-onbuild.svg) `cusspvz/node:0.8.24-onbuild`

![layers](https://images.microbadger.com/badges/image/cusspvz/node:0.8.24-development.svg) `cusspvz/node:0.8.24-development`


* **0.8.23** - [![build status](https://travis-ci.org/cusspvz/node.docker.svg?branch=version%2F0.8.23)](http://travis-ci.org/cusspvz/node.docker)

![layers](https://images.microbadger.com/badges/image/cusspvz/node:0.8.23.svg) `cusspvz/node:0.8.23`

![layers](https://images.microbadger.com/badges/image/cusspvz/node:0.8.23-onbuild.svg) `cusspvz/node:0.8.23-onbuild`

![layers](https://images.microbadger.com/badges/image/cusspvz/node:0.8.23-development.svg) `cusspvz/node:0.8.23-development`


* **0.8.22** - [![build status](https://travis-ci.org/cusspvz/node.docker.svg?branch=version%2F0.8.22)](http://travis-ci.org/cusspvz/node.docker)

![layers](https://images.microbadger.com/badges/image/cusspvz/node:0.8.22.svg) `cusspvz/node:0.8.22`

![layers](https://images.microbadger.com/badges/image/cusspvz/node:0.8.22-onbuild.svg) `cusspvz/node:0.8.22-onbuild`

![layers](https://images.microbadger.com/badges/image/cusspvz/node:0.8.22-development.svg) `cusspvz/node:0.8.22-development`


* **0.8.21** - [![build status](https://travis-ci.org/cusspvz/node.docker.svg?branch=version%2F0.8.21)](http://travis-ci.org/cusspvz/node.docker)

![layers](https://images.microbadger.com/badges/image/cusspvz/node:0.8.21.svg) `cusspvz/node:0.8.21`

![layers](https://images.microbadger.com/badges/image/cusspvz/node:0.8.21-onbuild.svg) `cusspvz/node:0.8.21-onbuild`

![layers](https://images.microbadger.com/badges/image/cusspvz/node:0.8.21-development.svg) `cusspvz/node:0.8.21-development`


* **0.8.20** - [![build status](https://travis-ci.org/cusspvz/node.docker.svg?branch=version%2F0.8.20)](http://travis-ci.org/cusspvz/node.docker)

![layers](https://images.microbadger.com/badges/image/cusspvz/node:0.8.20.svg) `cusspvz/node:0.8.20`

![layers](https://images.microbadger.com/badges/image/cusspvz/node:0.8.20-onbuild.svg) `cusspvz/node:0.8.20-onbuild`

![layers](https://images.microbadger.com/badges/image/cusspvz/node:0.8.20-development.svg) `cusspvz/node:0.8.20-development`


* **0.8.19** - [![build status](https://travis-ci.org/cusspvz/node.docker.svg?branch=version%2F0.8.19)](http://travis-ci.org/cusspvz/node.docker)

![layers](https://images.microbadger.com/badges/image/cusspvz/node:0.8.19.svg) `cusspvz/node:0.8.19`

![layers](https://images.microbadger.com/badges/image/cusspvz/node:0.8.19-onbuild.svg) `cusspvz/node:0.8.19-onbuild`

![layers](https://images.microbadger.com/badges/image/cusspvz/node:0.8.19-development.svg) `cusspvz/node:0.8.19-development`


* **0.8.18** - [![build status](https://travis-ci.org/cusspvz/node.docker.svg?branch=version%2F0.8.18)](http://travis-ci.org/cusspvz/node.docker)

![layers](https://images.microbadger.com/badges/image/cusspvz/node:0.8.18.svg) `cusspvz/node:0.8.18`

![layers](https://images.microbadger.com/badges/image/cusspvz/node:0.8.18-onbuild.svg) `cusspvz/node:0.8.18-onbuild`

![layers](https://images.microbadger.com/badges/image/cusspvz/node:0.8.18-development.svg) `cusspvz/node:0.8.18-development`


* **0.8.17** - [![build status](https://travis-ci.org/cusspvz/node.docker.svg?branch=version%2F0.8.17)](http://travis-ci.org/cusspvz/node.docker)

![layers](https://images.microbadger.com/badges/image/cusspvz/node:0.8.17.svg) `cusspvz/node:0.8.17`

![layers](https://images.microbadger.com/badges/image/cusspvz/node:0.8.17-onbuild.svg) `cusspvz/node:0.8.17-onbuild`

![layers](https://images.microbadger.com/badges/image/cusspvz/node:0.8.17-development.svg) `cusspvz/node:0.8.17-development`


* **0.8.16** - [![build status](https://travis-ci.org/cusspvz/node.docker.svg?branch=version%2F0.8.16)](http://travis-ci.org/cusspvz/node.docker)

![layers](https://images.microbadger.com/badges/image/cusspvz/node:0.8.16.svg) `cusspvz/node:0.8.16`

![layers](https://images.microbadger.com/badges/image/cusspvz/node:0.8.16-onbuild.svg) `cusspvz/node:0.8.16-onbuild`

![layers](https://images.microbadger.com/badges/image/cusspvz/node:0.8.16-development.svg) `cusspvz/node:0.8.16-development`


* **0.8.15** - [![build status](https://travis-ci.org/cusspvz/node.docker.svg?branch=version%2F0.8.15)](http://travis-ci.org/cusspvz/node.docker)

![layers](https://images.microbadger.com/badges/image/cusspvz/node:0.8.15.svg) `cusspvz/node:0.8.15`

![layers](https://images.microbadger.com/badges/image/cusspvz/node:0.8.15-onbuild.svg) `cusspvz/node:0.8.15-onbuild`

![layers](https://images.microbadger.com/badges/image/cusspvz/node:0.8.15-development.svg) `cusspvz/node:0.8.15-development`


* **0.8.14** - [![build status](https://travis-ci.org/cusspvz/node.docker.svg?branch=version%2F0.8.14)](http://travis-ci.org/cusspvz/node.docker)

![layers](https://images.microbadger.com/badges/image/cusspvz/node:0.8.14.svg) `cusspvz/node:0.8.14`

![layers](https://images.microbadger.com/badges/image/cusspvz/node:0.8.14-onbuild.svg) `cusspvz/node:0.8.14-onbuild`

![layers](https://images.microbadger.com/badges/image/cusspvz/node:0.8.14-development.svg) `cusspvz/node:0.8.14-development`


* **0.8.13** - [![build status](https://travis-ci.org/cusspvz/node.docker.svg?branch=version%2F0.8.13)](http://travis-ci.org/cusspvz/node.docker)

![layers](https://images.microbadger.com/badges/image/cusspvz/node:0.8.13.svg) `cusspvz/node:0.8.13`

![layers](https://images.microbadger.com/badges/image/cusspvz/node:0.8.13-onbuild.svg) `cusspvz/node:0.8.13-onbuild`

![layers](https://images.microbadger.com/badges/image/cusspvz/node:0.8.13-development.svg) `cusspvz/node:0.8.13-development`


* **0.8.12** - [![build status](https://travis-ci.org/cusspvz/node.docker.svg?branch=version%2F0.8.12)](http://travis-ci.org/cusspvz/node.docker)

![layers](https://images.microbadger.com/badges/image/cusspvz/node:0.8.12.svg) `cusspvz/node:0.8.12`

![layers](https://images.microbadger.com/badges/image/cusspvz/node:0.8.12-onbuild.svg) `cusspvz/node:0.8.12-onbuild`

![layers](https://images.microbadger.com/badges/image/cusspvz/node:0.8.12-development.svg) `cusspvz/node:0.8.12-development`


* **0.8.11** - [![build status](https://travis-ci.org/cusspvz/node.docker.svg?branch=version%2F0.8.11)](http://travis-ci.org/cusspvz/node.docker)

![layers](https://images.microbadger.com/badges/image/cusspvz/node:0.8.11.svg) `cusspvz/node:0.8.11`

![layers](https://images.microbadger.com/badges/image/cusspvz/node:0.8.11-onbuild.svg) `cusspvz/node:0.8.11-onbuild`

![layers](https://images.microbadger.com/badges/image/cusspvz/node:0.8.11-development.svg) `cusspvz/node:0.8.11-development`


* **0.8.10** - [![build status](https://travis-ci.org/cusspvz/node.docker.svg?branch=version%2F0.8.10)](http://travis-ci.org/cusspvz/node.docker)

![layers](https://images.microbadger.com/badges/image/cusspvz/node:0.8.10.svg) `cusspvz/node:0.8.10`

![layers](https://images.microbadger.com/badges/image/cusspvz/node:0.8.10-onbuild.svg) `cusspvz/node:0.8.10-onbuild`

![layers](https://images.microbadger.com/badges/image/cusspvz/node:0.8.10-development.svg) `cusspvz/node:0.8.10-development`


* **0.8.9** - [![build status](https://travis-ci.org/cusspvz/node.docker.svg?branch=version%2F0.8.9)](http://travis-ci.org/cusspvz/node.docker)

![layers](https://images.microbadger.com/badges/image/cusspvz/node:0.8.9.svg) `cusspvz/node:0.8.9`

![layers](https://images.microbadger.com/badges/image/cusspvz/node:0.8.9-onbuild.svg) `cusspvz/node:0.8.9-onbuild`

![layers](https://images.microbadger.com/badges/image/cusspvz/node:0.8.9-development.svg) `cusspvz/node:0.8.9-development`


* **0.8.8** - [![build status](https://travis-ci.org/cusspvz/node.docker.svg?branch=version%2F0.8.8)](http://travis-ci.org/cusspvz/node.docker)

![layers](https://images.microbadger.com/badges/image/cusspvz/node:0.8.8.svg) `cusspvz/node:0.8.8`

![layers](https://images.microbadger.com/badges/image/cusspvz/node:0.8.8-onbuild.svg) `cusspvz/node:0.8.8-onbuild`

![layers](https://images.microbadger.com/badges/image/cusspvz/node:0.8.8-development.svg) `cusspvz/node:0.8.8-development`


* **0.8.7** - [![build status](https://travis-ci.org/cusspvz/node.docker.svg?branch=version%2F0.8.7)](http://travis-ci.org/cusspvz/node.docker)

![layers](https://images.microbadger.com/badges/image/cusspvz/node:0.8.7.svg) `cusspvz/node:0.8.7`

![layers](https://images.microbadger.com/badges/image/cusspvz/node:0.8.7-onbuild.svg) `cusspvz/node:0.8.7-onbuild`

![layers](https://images.microbadger.com/badges/image/cusspvz/node:0.8.7-development.svg) `cusspvz/node:0.8.7-development`


* **0.8.6** - [![build status](https://travis-ci.org/cusspvz/node.docker.svg?branch=version%2F0.8.6)](http://travis-ci.org/cusspvz/node.docker)

![layers](https://images.microbadger.com/badges/image/cusspvz/node:0.8.6.svg) `cusspvz/node:0.8.6`

![layers](https://images.microbadger.com/badges/image/cusspvz/node:0.8.6-onbuild.svg) `cusspvz/node:0.8.6-onbuild`

![layers](https://images.microbadger.com/badges/image/cusspvz/node:0.8.6-development.svg) `cusspvz/node:0.8.6-development`


* **0.8.5** - [![build status](https://travis-ci.org/cusspvz/node.docker.svg?branch=version%2F0.8.5)](http://travis-ci.org/cusspvz/node.docker)

![layers](https://images.microbadger.com/badges/image/cusspvz/node:0.8.5.svg) `cusspvz/node:0.8.5`

![layers](https://images.microbadger.com/badges/image/cusspvz/node:0.8.5-onbuild.svg) `cusspvz/node:0.8.5-onbuild`

![layers](https://images.microbadger.com/badges/image/cusspvz/node:0.8.5-development.svg) `cusspvz/node:0.8.5-development`


* **0.8.4** - [![build status](https://travis-ci.org/cusspvz/node.docker.svg?branch=version%2F0.8.4)](http://travis-ci.org/cusspvz/node.docker)

![layers](https://images.microbadger.com/badges/image/cusspvz/node:0.8.4.svg) `cusspvz/node:0.8.4`

![layers](https://images.microbadger.com/badges/image/cusspvz/node:0.8.4-onbuild.svg) `cusspvz/node:0.8.4-onbuild`

![layers](https://images.microbadger.com/badges/image/cusspvz/node:0.8.4-development.svg) `cusspvz/node:0.8.4-development`


* **0.8.3** - [![build status](https://travis-ci.org/cusspvz/node.docker.svg?branch=version%2F0.8.3)](http://travis-ci.org/cusspvz/node.docker)

![layers](https://images.microbadger.com/badges/image/cusspvz/node:0.8.3.svg) `cusspvz/node:0.8.3`

![layers](https://images.microbadger.com/badges/image/cusspvz/node:0.8.3-onbuild.svg) `cusspvz/node:0.8.3-onbuild`

![layers](https://images.microbadger.com/badges/image/cusspvz/node:0.8.3-development.svg) `cusspvz/node:0.8.3-development`


* **0.8.2** - [![build status](https://travis-ci.org/cusspvz/node.docker.svg?branch=version%2F0.8.2)](http://travis-ci.org/cusspvz/node.docker)

![layers](https://images.microbadger.com/badges/image/cusspvz/node:0.8.2.svg) `cusspvz/node:0.8.2`

![layers](https://images.microbadger.com/badges/image/cusspvz/node:0.8.2-onbuild.svg) `cusspvz/node:0.8.2-onbuild`

![layers](https://images.microbadger.com/badges/image/cusspvz/node:0.8.2-development.svg) `cusspvz/node:0.8.2-development`


* **0.8.1** - [![build status](https://travis-ci.org/cusspvz/node.docker.svg?branch=version%2F0.8.1)](http://travis-ci.org/cusspvz/node.docker)

![layers](https://images.microbadger.com/badges/image/cusspvz/node:0.8.1.svg) `cusspvz/node:0.8.1`

![layers](https://images.microbadger.com/badges/image/cusspvz/node:0.8.1-onbuild.svg) `cusspvz/node:0.8.1-onbuild`

![layers](https://images.microbadger.com/badges/image/cusspvz/node:0.8.1-development.svg) `cusspvz/node:0.8.1-development`


* **0.8.0** - [![build status](https://travis-ci.org/cusspvz/node.docker.svg?branch=version%2F0.8.0)](http://travis-ci.org/cusspvz/node.docker)

![layers](https://images.microbadger.com/badges/image/cusspvz/node:0.8.0.svg) `cusspvz/node:0.8.0`

![layers](https://images.microbadger.com/badges/image/cusspvz/node:0.8.0-onbuild.svg) `cusspvz/node:0.8.0-onbuild`

![layers](https://images.microbadger.com/badges/image/cusspvz/node:0.8.0-development.svg) `cusspvz/node:0.8.0-development`


* **0.7.12** - [![build status](https://travis-ci.org/cusspvz/node.docker.svg?branch=version%2F0.7.12)](http://travis-ci.org/cusspvz/node.docker)

![layers](https://images.microbadger.com/badges/image/cusspvz/node:0.7.12.svg) `cusspvz/node:0.7.12`

![layers](https://images.microbadger.com/badges/image/cusspvz/node:0.7.12-onbuild.svg) `cusspvz/node:0.7.12-onbuild`

![layers](https://images.microbadger.com/badges/image/cusspvz/node:0.7.12-development.svg) `cusspvz/node:0.7.12-development`


* **0.7.11** - [![build status](https://travis-ci.org/cusspvz/node.docker.svg?branch=version%2F0.7.11)](http://travis-ci.org/cusspvz/node.docker)

![layers](https://images.microbadger.com/badges/image/cusspvz/node:0.7.11.svg) `cusspvz/node:0.7.11`

![layers](https://images.microbadger.com/badges/image/cusspvz/node:0.7.11-onbuild.svg) `cusspvz/node:0.7.11-onbuild`

![layers](https://images.microbadger.com/badges/image/cusspvz/node:0.7.11-development.svg) `cusspvz/node:0.7.11-development`


* **0.7.10** - [![build status](https://travis-ci.org/cusspvz/node.docker.svg?branch=version%2F0.7.10)](http://travis-ci.org/cusspvz/node.docker)

![layers](https://images.microbadger.com/badges/image/cusspvz/node:0.7.10.svg) `cusspvz/node:0.7.10`

![layers](https://images.microbadger.com/badges/image/cusspvz/node:0.7.10-onbuild.svg) `cusspvz/node:0.7.10-onbuild`

![layers](https://images.microbadger.com/badges/image/cusspvz/node:0.7.10-development.svg) `cusspvz/node:0.7.10-development`


* **0.7.9** - [![build status](https://travis-ci.org/cusspvz/node.docker.svg?branch=version%2F0.7.9)](http://travis-ci.org/cusspvz/node.docker)

![layers](https://images.microbadger.com/badges/image/cusspvz/node:0.7.9.svg) `cusspvz/node:0.7.9`

![layers](https://images.microbadger.com/badges/image/cusspvz/node:0.7.9-onbuild.svg) `cusspvz/node:0.7.9-onbuild`

![layers](https://images.microbadger.com/badges/image/cusspvz/node:0.7.9-development.svg) `cusspvz/node:0.7.9-development`


* **0.7.8** - [![build status](https://travis-ci.org/cusspvz/node.docker.svg?branch=version%2F0.7.8)](http://travis-ci.org/cusspvz/node.docker)

![layers](https://images.microbadger.com/badges/image/cusspvz/node:0.7.8.svg) `cusspvz/node:0.7.8`

![layers](https://images.microbadger.com/badges/image/cusspvz/node:0.7.8-onbuild.svg) `cusspvz/node:0.7.8-onbuild`

![layers](https://images.microbadger.com/badges/image/cusspvz/node:0.7.8-development.svg) `cusspvz/node:0.7.8-development`


* **0.7.7** - [![build status](https://travis-ci.org/cusspvz/node.docker.svg?branch=version%2F0.7.7)](http://travis-ci.org/cusspvz/node.docker)

![layers](https://images.microbadger.com/badges/image/cusspvz/node:0.7.7.svg) `cusspvz/node:0.7.7`

![layers](https://images.microbadger.com/badges/image/cusspvz/node:0.7.7-onbuild.svg) `cusspvz/node:0.7.7-onbuild`

![layers](https://images.microbadger.com/badges/image/cusspvz/node:0.7.7-development.svg) `cusspvz/node:0.7.7-development`


* **0.7.6** - [![build status](https://travis-ci.org/cusspvz/node.docker.svg?branch=version%2F0.7.6)](http://travis-ci.org/cusspvz/node.docker)

![layers](https://images.microbadger.com/badges/image/cusspvz/node:0.7.6.svg) `cusspvz/node:0.7.6`

![layers](https://images.microbadger.com/badges/image/cusspvz/node:0.7.6-onbuild.svg) `cusspvz/node:0.7.6-onbuild`

![layers](https://images.microbadger.com/badges/image/cusspvz/node:0.7.6-development.svg) `cusspvz/node:0.7.6-development`


* **0.7.5** - [![build status](https://travis-ci.org/cusspvz/node.docker.svg?branch=version%2F0.7.5)](http://travis-ci.org/cusspvz/node.docker)

![layers](https://images.microbadger.com/badges/image/cusspvz/node:0.7.5.svg) `cusspvz/node:0.7.5`

![layers](https://images.microbadger.com/badges/image/cusspvz/node:0.7.5-onbuild.svg) `cusspvz/node:0.7.5-onbuild`

![layers](https://images.microbadger.com/badges/image/cusspvz/node:0.7.5-development.svg) `cusspvz/node:0.7.5-development`


* **0.7.4** - [![build status](https://travis-ci.org/cusspvz/node.docker.svg?branch=version%2F0.7.4)](http://travis-ci.org/cusspvz/node.docker)

![layers](https://images.microbadger.com/badges/image/cusspvz/node:0.7.4.svg) `cusspvz/node:0.7.4`

![layers](https://images.microbadger.com/badges/image/cusspvz/node:0.7.4-onbuild.svg) `cusspvz/node:0.7.4-onbuild`

![layers](https://images.microbadger.com/badges/image/cusspvz/node:0.7.4-development.svg) `cusspvz/node:0.7.4-development`


* **0.7.3** - [![build status](https://travis-ci.org/cusspvz/node.docker.svg?branch=version%2F0.7.3)](http://travis-ci.org/cusspvz/node.docker)

![layers](https://images.microbadger.com/badges/image/cusspvz/node:0.7.3.svg) `cusspvz/node:0.7.3`

![layers](https://images.microbadger.com/badges/image/cusspvz/node:0.7.3-onbuild.svg) `cusspvz/node:0.7.3-onbuild`

![layers](https://images.microbadger.com/badges/image/cusspvz/node:0.7.3-development.svg) `cusspvz/node:0.7.3-development`


* **0.7.2** - [![build status](https://travis-ci.org/cusspvz/node.docker.svg?branch=version%2F0.7.2)](http://travis-ci.org/cusspvz/node.docker)

![layers](https://images.microbadger.com/badges/image/cusspvz/node:0.7.2.svg) `cusspvz/node:0.7.2`

![layers](https://images.microbadger.com/badges/image/cusspvz/node:0.7.2-onbuild.svg) `cusspvz/node:0.7.2-onbuild`

![layers](https://images.microbadger.com/badges/image/cusspvz/node:0.7.2-development.svg) `cusspvz/node:0.7.2-development`


* **0.7.1** - [![build status](https://travis-ci.org/cusspvz/node.docker.svg?branch=version%2F0.7.1)](http://travis-ci.org/cusspvz/node.docker)

![layers](https://images.microbadger.com/badges/image/cusspvz/node:0.7.1.svg) `cusspvz/node:0.7.1`

![layers](https://images.microbadger.com/badges/image/cusspvz/node:0.7.1-onbuild.svg) `cusspvz/node:0.7.1-onbuild`

![layers](https://images.microbadger.com/badges/image/cusspvz/node:0.7.1-development.svg) `cusspvz/node:0.7.1-development`


* **0.7.0** - [![build status](https://travis-ci.org/cusspvz/node.docker.svg?branch=version%2F0.7.0)](http://travis-ci.org/cusspvz/node.docker)

![layers](https://images.microbadger.com/badges/image/cusspvz/node:0.7.0.svg) `cusspvz/node:0.7.0`

![layers](https://images.microbadger.com/badges/image/cusspvz/node:0.7.0-onbuild.svg) `cusspvz/node:0.7.0-onbuild`

![layers](https://images.microbadger.com/badges/image/cusspvz/node:0.7.0-development.svg) `cusspvz/node:0.7.0-development`


* **0.6.21** - [![build status](https://travis-ci.org/cusspvz/node.docker.svg?branch=version%2F0.6.21)](http://travis-ci.org/cusspvz/node.docker)

![layers](https://images.microbadger.com/badges/image/cusspvz/node:0.6.21.svg) `cusspvz/node:0.6.21`

![layers](https://images.microbadger.com/badges/image/cusspvz/node:0.6.21-onbuild.svg) `cusspvz/node:0.6.21-onbuild`

![layers](https://images.microbadger.com/badges/image/cusspvz/node:0.6.21-development.svg) `cusspvz/node:0.6.21-development`


* **0.6.20** - [![build status](https://travis-ci.org/cusspvz/node.docker.svg?branch=version%2F0.6.20)](http://travis-ci.org/cusspvz/node.docker)

![layers](https://images.microbadger.com/badges/image/cusspvz/node:0.6.20.svg) `cusspvz/node:0.6.20`

![layers](https://images.microbadger.com/badges/image/cusspvz/node:0.6.20-onbuild.svg) `cusspvz/node:0.6.20-onbuild`

![layers](https://images.microbadger.com/badges/image/cusspvz/node:0.6.20-development.svg) `cusspvz/node:0.6.20-development`


* **0.6.19** - [![build status](https://travis-ci.org/cusspvz/node.docker.svg?branch=version%2F0.6.19)](http://travis-ci.org/cusspvz/node.docker)

![layers](https://images.microbadger.com/badges/image/cusspvz/node:0.6.19.svg) `cusspvz/node:0.6.19`

![layers](https://images.microbadger.com/badges/image/cusspvz/node:0.6.19-onbuild.svg) `cusspvz/node:0.6.19-onbuild`

![layers](https://images.microbadger.com/badges/image/cusspvz/node:0.6.19-development.svg) `cusspvz/node:0.6.19-development`


* **0.6.18** - [![build status](https://travis-ci.org/cusspvz/node.docker.svg?branch=version%2F0.6.18)](http://travis-ci.org/cusspvz/node.docker)

![layers](https://images.microbadger.com/badges/image/cusspvz/node:0.6.18.svg) `cusspvz/node:0.6.18`

![layers](https://images.microbadger.com/badges/image/cusspvz/node:0.6.18-onbuild.svg) `cusspvz/node:0.6.18-onbuild`

![layers](https://images.microbadger.com/badges/image/cusspvz/node:0.6.18-development.svg) `cusspvz/node:0.6.18-development`


* **0.6.17** - [![build status](https://travis-ci.org/cusspvz/node.docker.svg?branch=version%2F0.6.17)](http://travis-ci.org/cusspvz/node.docker)

![layers](https://images.microbadger.com/badges/image/cusspvz/node:0.6.17.svg) `cusspvz/node:0.6.17`

![layers](https://images.microbadger.com/badges/image/cusspvz/node:0.6.17-onbuild.svg) `cusspvz/node:0.6.17-onbuild`

![layers](https://images.microbadger.com/badges/image/cusspvz/node:0.6.17-development.svg) `cusspvz/node:0.6.17-development`


* **0.6.16** - [![build status](https://travis-ci.org/cusspvz/node.docker.svg?branch=version%2F0.6.16)](http://travis-ci.org/cusspvz/node.docker)

![layers](https://images.microbadger.com/badges/image/cusspvz/node:0.6.16.svg) `cusspvz/node:0.6.16`

![layers](https://images.microbadger.com/badges/image/cusspvz/node:0.6.16-onbuild.svg) `cusspvz/node:0.6.16-onbuild`

![layers](https://images.microbadger.com/badges/image/cusspvz/node:0.6.16-development.svg) `cusspvz/node:0.6.16-development`


* **0.6.15** - [![build status](https://travis-ci.org/cusspvz/node.docker.svg?branch=version%2F0.6.15)](http://travis-ci.org/cusspvz/node.docker)

![layers](https://images.microbadger.com/badges/image/cusspvz/node:0.6.15.svg) `cusspvz/node:0.6.15`

![layers](https://images.microbadger.com/badges/image/cusspvz/node:0.6.15-onbuild.svg) `cusspvz/node:0.6.15-onbuild`

![layers](https://images.microbadger.com/badges/image/cusspvz/node:0.6.15-development.svg) `cusspvz/node:0.6.15-development`


* **0.6.14** - [![build status](https://travis-ci.org/cusspvz/node.docker.svg?branch=version%2F0.6.14)](http://travis-ci.org/cusspvz/node.docker)

![layers](https://images.microbadger.com/badges/image/cusspvz/node:0.6.14.svg) `cusspvz/node:0.6.14`

![layers](https://images.microbadger.com/badges/image/cusspvz/node:0.6.14-onbuild.svg) `cusspvz/node:0.6.14-onbuild`

![layers](https://images.microbadger.com/badges/image/cusspvz/node:0.6.14-development.svg) `cusspvz/node:0.6.14-development`


* **0.6.13** - [![build status](https://travis-ci.org/cusspvz/node.docker.svg?branch=version%2F0.6.13)](http://travis-ci.org/cusspvz/node.docker)

![layers](https://images.microbadger.com/badges/image/cusspvz/node:0.6.13.svg) `cusspvz/node:0.6.13`

![layers](https://images.microbadger.com/badges/image/cusspvz/node:0.6.13-onbuild.svg) `cusspvz/node:0.6.13-onbuild`

![layers](https://images.microbadger.com/badges/image/cusspvz/node:0.6.13-development.svg) `cusspvz/node:0.6.13-development`


* **0.6.12** - [![build status](https://travis-ci.org/cusspvz/node.docker.svg?branch=version%2F0.6.12)](http://travis-ci.org/cusspvz/node.docker)

![layers](https://images.microbadger.com/badges/image/cusspvz/node:0.6.12.svg) `cusspvz/node:0.6.12`

![layers](https://images.microbadger.com/badges/image/cusspvz/node:0.6.12-onbuild.svg) `cusspvz/node:0.6.12-onbuild`

![layers](https://images.microbadger.com/badges/image/cusspvz/node:0.6.12-development.svg) `cusspvz/node:0.6.12-development`


* **0.6.11** - [![build status](https://travis-ci.org/cusspvz/node.docker.svg?branch=version%2F0.6.11)](http://travis-ci.org/cusspvz/node.docker)

![layers](https://images.microbadger.com/badges/image/cusspvz/node:0.6.11.svg) `cusspvz/node:0.6.11`

![layers](https://images.microbadger.com/badges/image/cusspvz/node:0.6.11-onbuild.svg) `cusspvz/node:0.6.11-onbuild`

![layers](https://images.microbadger.com/badges/image/cusspvz/node:0.6.11-development.svg) `cusspvz/node:0.6.11-development`


* **0.6.10** - [![build status](https://travis-ci.org/cusspvz/node.docker.svg?branch=version%2F0.6.10)](http://travis-ci.org/cusspvz/node.docker)

![layers](https://images.microbadger.com/badges/image/cusspvz/node:0.6.10.svg) `cusspvz/node:0.6.10`

![layers](https://images.microbadger.com/badges/image/cusspvz/node:0.6.10-onbuild.svg) `cusspvz/node:0.6.10-onbuild`

![layers](https://images.microbadger.com/badges/image/cusspvz/node:0.6.10-development.svg) `cusspvz/node:0.6.10-development`


* **0.6.9** - [![build status](https://travis-ci.org/cusspvz/node.docker.svg?branch=version%2F0.6.9)](http://travis-ci.org/cusspvz/node.docker)

![layers](https://images.microbadger.com/badges/image/cusspvz/node:0.6.9.svg) `cusspvz/node:0.6.9`

![layers](https://images.microbadger.com/badges/image/cusspvz/node:0.6.9-onbuild.svg) `cusspvz/node:0.6.9-onbuild`

![layers](https://images.microbadger.com/badges/image/cusspvz/node:0.6.9-development.svg) `cusspvz/node:0.6.9-development`


* **0.6.8** - [![build status](https://travis-ci.org/cusspvz/node.docker.svg?branch=version%2F0.6.8)](http://travis-ci.org/cusspvz/node.docker)

![layers](https://images.microbadger.com/badges/image/cusspvz/node:0.6.8.svg) `cusspvz/node:0.6.8`

![layers](https://images.microbadger.com/badges/image/cusspvz/node:0.6.8-onbuild.svg) `cusspvz/node:0.6.8-onbuild`

![layers](https://images.microbadger.com/badges/image/cusspvz/node:0.6.8-development.svg) `cusspvz/node:0.6.8-development`


* **0.6.7** - [![build status](https://travis-ci.org/cusspvz/node.docker.svg?branch=version%2F0.6.7)](http://travis-ci.org/cusspvz/node.docker)

![layers](https://images.microbadger.com/badges/image/cusspvz/node:0.6.7.svg) `cusspvz/node:0.6.7`

![layers](https://images.microbadger.com/badges/image/cusspvz/node:0.6.7-onbuild.svg) `cusspvz/node:0.6.7-onbuild`

![layers](https://images.microbadger.com/badges/image/cusspvz/node:0.6.7-development.svg) `cusspvz/node:0.6.7-development`


* **0.6.6** - [![build status](https://travis-ci.org/cusspvz/node.docker.svg?branch=version%2F0.6.6)](http://travis-ci.org/cusspvz/node.docker)

![layers](https://images.microbadger.com/badges/image/cusspvz/node:0.6.6.svg) `cusspvz/node:0.6.6`

![layers](https://images.microbadger.com/badges/image/cusspvz/node:0.6.6-onbuild.svg) `cusspvz/node:0.6.6-onbuild`

![layers](https://images.microbadger.com/badges/image/cusspvz/node:0.6.6-development.svg) `cusspvz/node:0.6.6-development`


* **0.6.5** - [![build status](https://travis-ci.org/cusspvz/node.docker.svg?branch=version%2F0.6.5)](http://travis-ci.org/cusspvz/node.docker)

![layers](https://images.microbadger.com/badges/image/cusspvz/node:0.6.5.svg) `cusspvz/node:0.6.5`

![layers](https://images.microbadger.com/badges/image/cusspvz/node:0.6.5-onbuild.svg) `cusspvz/node:0.6.5-onbuild`

![layers](https://images.microbadger.com/badges/image/cusspvz/node:0.6.5-development.svg) `cusspvz/node:0.6.5-development`


* **0.6.4** - [![build status](https://travis-ci.org/cusspvz/node.docker.svg?branch=version%2F0.6.4)](http://travis-ci.org/cusspvz/node.docker)

![layers](https://images.microbadger.com/badges/image/cusspvz/node:0.6.4.svg) `cusspvz/node:0.6.4`

![layers](https://images.microbadger.com/badges/image/cusspvz/node:0.6.4-onbuild.svg) `cusspvz/node:0.6.4-onbuild`

![layers](https://images.microbadger.com/badges/image/cusspvz/node:0.6.4-development.svg) `cusspvz/node:0.6.4-development`


* **0.6.3** - [![build status](https://travis-ci.org/cusspvz/node.docker.svg?branch=version%2F0.6.3)](http://travis-ci.org/cusspvz/node.docker)

![layers](https://images.microbadger.com/badges/image/cusspvz/node:0.6.3.svg) `cusspvz/node:0.6.3`

![layers](https://images.microbadger.com/badges/image/cusspvz/node:0.6.3-onbuild.svg) `cusspvz/node:0.6.3-onbuild`

![layers](https://images.microbadger.com/badges/image/cusspvz/node:0.6.3-development.svg) `cusspvz/node:0.6.3-development`


* **0.6.2** - [![build status](https://travis-ci.org/cusspvz/node.docker.svg?branch=version%2F0.6.2)](http://travis-ci.org/cusspvz/node.docker)

![layers](https://images.microbadger.com/badges/image/cusspvz/node:0.6.2.svg) `cusspvz/node:0.6.2`

![layers](https://images.microbadger.com/badges/image/cusspvz/node:0.6.2-onbuild.svg) `cusspvz/node:0.6.2-onbuild`

![layers](https://images.microbadger.com/badges/image/cusspvz/node:0.6.2-development.svg) `cusspvz/node:0.6.2-development`


* **0.6.1** - [![build status](https://travis-ci.org/cusspvz/node.docker.svg?branch=version%2F0.6.1)](http://travis-ci.org/cusspvz/node.docker)

![layers](https://images.microbadger.com/badges/image/cusspvz/node:0.6.1.svg) `cusspvz/node:0.6.1`

![layers](https://images.microbadger.com/badges/image/cusspvz/node:0.6.1-onbuild.svg) `cusspvz/node:0.6.1-onbuild`

![layers](https://images.microbadger.com/badges/image/cusspvz/node:0.6.1-development.svg) `cusspvz/node:0.6.1-development`


* **0.6.0** - [![build status](https://travis-ci.org/cusspvz/node.docker.svg?branch=version%2F0.6.0)](http://travis-ci.org/cusspvz/node.docker)

![layers](https://images.microbadger.com/badges/image/cusspvz/node:0.6.0.svg) `cusspvz/node:0.6.0`

![layers](https://images.microbadger.com/badges/image/cusspvz/node:0.6.0-onbuild.svg) `cusspvz/node:0.6.0-onbuild`

![layers](https://images.microbadger.com/badges/image/cusspvz/node:0.6.0-development.svg) `cusspvz/node:0.6.0-development`


* **0.5.10** - [![build status](https://travis-ci.org/cusspvz/node.docker.svg?branch=version%2F0.5.10)](http://travis-ci.org/cusspvz/node.docker)

![layers](https://images.microbadger.com/badges/image/cusspvz/node:0.5.10.svg) `cusspvz/node:0.5.10`

![layers](https://images.microbadger.com/badges/image/cusspvz/node:0.5.10-onbuild.svg) `cusspvz/node:0.5.10-onbuild`

![layers](https://images.microbadger.com/badges/image/cusspvz/node:0.5.10-development.svg) `cusspvz/node:0.5.10-development`


* **0.5.9** - [![build status](https://travis-ci.org/cusspvz/node.docker.svg?branch=version%2F0.5.9)](http://travis-ci.org/cusspvz/node.docker)

![layers](https://images.microbadger.com/badges/image/cusspvz/node:0.5.9.svg) `cusspvz/node:0.5.9`

![layers](https://images.microbadger.com/badges/image/cusspvz/node:0.5.9-onbuild.svg) `cusspvz/node:0.5.9-onbuild`

![layers](https://images.microbadger.com/badges/image/cusspvz/node:0.5.9-development.svg) `cusspvz/node:0.5.9-development`


* **0.5.8** - [![build status](https://travis-ci.org/cusspvz/node.docker.svg?branch=version%2F0.5.8)](http://travis-ci.org/cusspvz/node.docker)

![layers](https://images.microbadger.com/badges/image/cusspvz/node:0.5.8.svg) `cusspvz/node:0.5.8`

![layers](https://images.microbadger.com/badges/image/cusspvz/node:0.5.8-onbuild.svg) `cusspvz/node:0.5.8-onbuild`

![layers](https://images.microbadger.com/badges/image/cusspvz/node:0.5.8-development.svg) `cusspvz/node:0.5.8-development`


* **0.5.7** - [![build status](https://travis-ci.org/cusspvz/node.docker.svg?branch=version%2F0.5.7)](http://travis-ci.org/cusspvz/node.docker)

![layers](https://images.microbadger.com/badges/image/cusspvz/node:0.5.7.svg) `cusspvz/node:0.5.7`

![layers](https://images.microbadger.com/badges/image/cusspvz/node:0.5.7-onbuild.svg) `cusspvz/node:0.5.7-onbuild`

![layers](https://images.microbadger.com/badges/image/cusspvz/node:0.5.7-development.svg) `cusspvz/node:0.5.7-development`


* **0.5.6** - [![build status](https://travis-ci.org/cusspvz/node.docker.svg?branch=version%2F0.5.6)](http://travis-ci.org/cusspvz/node.docker)

![layers](https://images.microbadger.com/badges/image/cusspvz/node:0.5.6.svg) `cusspvz/node:0.5.6`

![layers](https://images.microbadger.com/badges/image/cusspvz/node:0.5.6-onbuild.svg) `cusspvz/node:0.5.6-onbuild`

![layers](https://images.microbadger.com/badges/image/cusspvz/node:0.5.6-development.svg) `cusspvz/node:0.5.6-development`


* **0.5.5** - [![build status](https://travis-ci.org/cusspvz/node.docker.svg?branch=version%2F0.5.5)](http://travis-ci.org/cusspvz/node.docker)

![layers](https://images.microbadger.com/badges/image/cusspvz/node:0.5.5.svg) `cusspvz/node:0.5.5`

![layers](https://images.microbadger.com/badges/image/cusspvz/node:0.5.5-onbuild.svg) `cusspvz/node:0.5.5-onbuild`

![layers](https://images.microbadger.com/badges/image/cusspvz/node:0.5.5-development.svg) `cusspvz/node:0.5.5-development`


* **0.5.4** - [![build status](https://travis-ci.org/cusspvz/node.docker.svg?branch=version%2F0.5.4)](http://travis-ci.org/cusspvz/node.docker)

![layers](https://images.microbadger.com/badges/image/cusspvz/node:0.5.4.svg) `cusspvz/node:0.5.4`

![layers](https://images.microbadger.com/badges/image/cusspvz/node:0.5.4-onbuild.svg) `cusspvz/node:0.5.4-onbuild`

![layers](https://images.microbadger.com/badges/image/cusspvz/node:0.5.4-development.svg) `cusspvz/node:0.5.4-development`


* **0.5.3** - [![build status](https://travis-ci.org/cusspvz/node.docker.svg?branch=version%2F0.5.3)](http://travis-ci.org/cusspvz/node.docker)

![layers](https://images.microbadger.com/badges/image/cusspvz/node:0.5.3.svg) `cusspvz/node:0.5.3`

![layers](https://images.microbadger.com/badges/image/cusspvz/node:0.5.3-onbuild.svg) `cusspvz/node:0.5.3-onbuild`

![layers](https://images.microbadger.com/badges/image/cusspvz/node:0.5.3-development.svg) `cusspvz/node:0.5.3-development`


* **0.5.2** - [![build status](https://travis-ci.org/cusspvz/node.docker.svg?branch=version%2F0.5.2)](http://travis-ci.org/cusspvz/node.docker)

![layers](https://images.microbadger.com/badges/image/cusspvz/node:0.5.2.svg) `cusspvz/node:0.5.2`

![layers](https://images.microbadger.com/badges/image/cusspvz/node:0.5.2-onbuild.svg) `cusspvz/node:0.5.2-onbuild`

![layers](https://images.microbadger.com/badges/image/cusspvz/node:0.5.2-development.svg) `cusspvz/node:0.5.2-development`


* **0.5.1** - [![build status](https://travis-ci.org/cusspvz/node.docker.svg?branch=version%2F0.5.1)](http://travis-ci.org/cusspvz/node.docker)

![layers](https://images.microbadger.com/badges/image/cusspvz/node:0.5.1.svg) `cusspvz/node:0.5.1`

![layers](https://images.microbadger.com/badges/image/cusspvz/node:0.5.1-onbuild.svg) `cusspvz/node:0.5.1-onbuild`

![layers](https://images.microbadger.com/badges/image/cusspvz/node:0.5.1-development.svg) `cusspvz/node:0.5.1-development`


* **0.5.0** - [![build status](https://travis-ci.org/cusspvz/node.docker.svg?branch=version%2F0.5.0)](http://travis-ci.org/cusspvz/node.docker)

![layers](https://images.microbadger.com/badges/image/cusspvz/node:0.5.0.svg) `cusspvz/node:0.5.0`

![layers](https://images.microbadger.com/badges/image/cusspvz/node:0.5.0-onbuild.svg) `cusspvz/node:0.5.0-onbuild`

![layers](https://images.microbadger.com/badges/image/cusspvz/node:0.5.0-development.svg) `cusspvz/node:0.5.0-development`


* **0.4.12** - [![build status](https://travis-ci.org/cusspvz/node.docker.svg?branch=version%2F0.4.12)](http://travis-ci.org/cusspvz/node.docker)

![layers](https://images.microbadger.com/badges/image/cusspvz/node:0.4.12.svg) `cusspvz/node:0.4.12`

![layers](https://images.microbadger.com/badges/image/cusspvz/node:0.4.12-onbuild.svg) `cusspvz/node:0.4.12-onbuild`

![layers](https://images.microbadger.com/badges/image/cusspvz/node:0.4.12-development.svg) `cusspvz/node:0.4.12-development`


* **0.4.11** - [![build status](https://travis-ci.org/cusspvz/node.docker.svg?branch=version%2F0.4.11)](http://travis-ci.org/cusspvz/node.docker)

![layers](https://images.microbadger.com/badges/image/cusspvz/node:0.4.11.svg) `cusspvz/node:0.4.11`

![layers](https://images.microbadger.com/badges/image/cusspvz/node:0.4.11-onbuild.svg) `cusspvz/node:0.4.11-onbuild`

![layers](https://images.microbadger.com/badges/image/cusspvz/node:0.4.11-development.svg) `cusspvz/node:0.4.11-development`


* **0.4.10** - [![build status](https://travis-ci.org/cusspvz/node.docker.svg?branch=version%2F0.4.10)](http://travis-ci.org/cusspvz/node.docker)

![layers](https://images.microbadger.com/badges/image/cusspvz/node:0.4.10.svg) `cusspvz/node:0.4.10`

![layers](https://images.microbadger.com/badges/image/cusspvz/node:0.4.10-onbuild.svg) `cusspvz/node:0.4.10-onbuild`

![layers](https://images.microbadger.com/badges/image/cusspvz/node:0.4.10-development.svg) `cusspvz/node:0.4.10-development`


* **0.4.9** - [![build status](https://travis-ci.org/cusspvz/node.docker.svg?branch=version%2F0.4.9)](http://travis-ci.org/cusspvz/node.docker)

![layers](https://images.microbadger.com/badges/image/cusspvz/node:0.4.9.svg) `cusspvz/node:0.4.9`

![layers](https://images.microbadger.com/badges/image/cusspvz/node:0.4.9-onbuild.svg) `cusspvz/node:0.4.9-onbuild`

![layers](https://images.microbadger.com/badges/image/cusspvz/node:0.4.9-development.svg) `cusspvz/node:0.4.9-development`


* **0.4.8** - [![build status](https://travis-ci.org/cusspvz/node.docker.svg?branch=version%2F0.4.8)](http://travis-ci.org/cusspvz/node.docker)

![layers](https://images.microbadger.com/badges/image/cusspvz/node:0.4.8.svg) `cusspvz/node:0.4.8`

![layers](https://images.microbadger.com/badges/image/cusspvz/node:0.4.8-onbuild.svg) `cusspvz/node:0.4.8-onbuild`

![layers](https://images.microbadger.com/badges/image/cusspvz/node:0.4.8-development.svg) `cusspvz/node:0.4.8-development`


* **0.4.7** - [![build status](https://travis-ci.org/cusspvz/node.docker.svg?branch=version%2F0.4.7)](http://travis-ci.org/cusspvz/node.docker)

![layers](https://images.microbadger.com/badges/image/cusspvz/node:0.4.7.svg) `cusspvz/node:0.4.7`

![layers](https://images.microbadger.com/badges/image/cusspvz/node:0.4.7-onbuild.svg) `cusspvz/node:0.4.7-onbuild`

![layers](https://images.microbadger.com/badges/image/cusspvz/node:0.4.7-development.svg) `cusspvz/node:0.4.7-development`


* **0.4.6** - [![build status](https://travis-ci.org/cusspvz/node.docker.svg?branch=version%2F0.4.6)](http://travis-ci.org/cusspvz/node.docker)

![layers](https://images.microbadger.com/badges/image/cusspvz/node:0.4.6.svg) `cusspvz/node:0.4.6`

![layers](https://images.microbadger.com/badges/image/cusspvz/node:0.4.6-onbuild.svg) `cusspvz/node:0.4.6-onbuild`

![layers](https://images.microbadger.com/badges/image/cusspvz/node:0.4.6-development.svg) `cusspvz/node:0.4.6-development`


* **0.4.5** - [![build status](https://travis-ci.org/cusspvz/node.docker.svg?branch=version%2F0.4.5)](http://travis-ci.org/cusspvz/node.docker)

![layers](https://images.microbadger.com/badges/image/cusspvz/node:0.4.5.svg) `cusspvz/node:0.4.5`

![layers](https://images.microbadger.com/badges/image/cusspvz/node:0.4.5-onbuild.svg) `cusspvz/node:0.4.5-onbuild`

![layers](https://images.microbadger.com/badges/image/cusspvz/node:0.4.5-development.svg) `cusspvz/node:0.4.5-development`


* **0.4.4** - [![build status](https://travis-ci.org/cusspvz/node.docker.svg?branch=version%2F0.4.4)](http://travis-ci.org/cusspvz/node.docker)

![layers](https://images.microbadger.com/badges/image/cusspvz/node:0.4.4.svg) `cusspvz/node:0.4.4`

![layers](https://images.microbadger.com/badges/image/cusspvz/node:0.4.4-onbuild.svg) `cusspvz/node:0.4.4-onbuild`

![layers](https://images.microbadger.com/badges/image/cusspvz/node:0.4.4-development.svg) `cusspvz/node:0.4.4-development`


* **0.4.3** - [![build status](https://travis-ci.org/cusspvz/node.docker.svg?branch=version%2F0.4.3)](http://travis-ci.org/cusspvz/node.docker)

![layers](https://images.microbadger.com/badges/image/cusspvz/node:0.4.3.svg) `cusspvz/node:0.4.3`

![layers](https://images.microbadger.com/badges/image/cusspvz/node:0.4.3-onbuild.svg) `cusspvz/node:0.4.3-onbuild`

![layers](https://images.microbadger.com/badges/image/cusspvz/node:0.4.3-development.svg) `cusspvz/node:0.4.3-development`


* **0.4.2** - [![build status](https://travis-ci.org/cusspvz/node.docker.svg?branch=version%2F0.4.2)](http://travis-ci.org/cusspvz/node.docker)

![layers](https://images.microbadger.com/badges/image/cusspvz/node:0.4.2.svg) `cusspvz/node:0.4.2`

![layers](https://images.microbadger.com/badges/image/cusspvz/node:0.4.2-onbuild.svg) `cusspvz/node:0.4.2-onbuild`

![layers](https://images.microbadger.com/badges/image/cusspvz/node:0.4.2-development.svg) `cusspvz/node:0.4.2-development`


* **0.4.1** - [![build status](https://travis-ci.org/cusspvz/node.docker.svg?branch=version%2F0.4.1)](http://travis-ci.org/cusspvz/node.docker)

![layers](https://images.microbadger.com/badges/image/cusspvz/node:0.4.1.svg) `cusspvz/node:0.4.1`

![layers](https://images.microbadger.com/badges/image/cusspvz/node:0.4.1-onbuild.svg) `cusspvz/node:0.4.1-onbuild`

![layers](https://images.microbadger.com/badges/image/cusspvz/node:0.4.1-development.svg) `cusspvz/node:0.4.1-development`


* **0.4.0** - [![build status](https://travis-ci.org/cusspvz/node.docker.svg?branch=version%2F0.4.0)](http://travis-ci.org/cusspvz/node.docker)

![layers](https://images.microbadger.com/badges/image/cusspvz/node:0.4.0.svg) `cusspvz/node:0.4.0`

![layers](https://images.microbadger.com/badges/image/cusspvz/node:0.4.0-onbuild.svg) `cusspvz/node:0.4.0-onbuild`

![layers](https://images.microbadger.com/badges/image/cusspvz/node:0.4.0-development.svg) `cusspvz/node:0.4.0-development`


* **0.3.8** - [![build status](https://travis-ci.org/cusspvz/node.docker.svg?branch=version%2F0.3.8)](http://travis-ci.org/cusspvz/node.docker)

![layers](https://images.microbadger.com/badges/image/cusspvz/node:0.3.8.svg) `cusspvz/node:0.3.8`

![layers](https://images.microbadger.com/badges/image/cusspvz/node:0.3.8-onbuild.svg) `cusspvz/node:0.3.8-onbuild`

![layers](https://images.microbadger.com/badges/image/cusspvz/node:0.3.8-development.svg) `cusspvz/node:0.3.8-development`


* **0.3.7** - [![build status](https://travis-ci.org/cusspvz/node.docker.svg?branch=version%2F0.3.7)](http://travis-ci.org/cusspvz/node.docker)

![layers](https://images.microbadger.com/badges/image/cusspvz/node:0.3.7.svg) `cusspvz/node:0.3.7`

![layers](https://images.microbadger.com/badges/image/cusspvz/node:0.3.7-onbuild.svg) `cusspvz/node:0.3.7-onbuild`

![layers](https://images.microbadger.com/badges/image/cusspvz/node:0.3.7-development.svg) `cusspvz/node:0.3.7-development`


* **0.3.6** - [![build status](https://travis-ci.org/cusspvz/node.docker.svg?branch=version%2F0.3.6)](http://travis-ci.org/cusspvz/node.docker)

![layers](https://images.microbadger.com/badges/image/cusspvz/node:0.3.6.svg) `cusspvz/node:0.3.6`

![layers](https://images.microbadger.com/badges/image/cusspvz/node:0.3.6-onbuild.svg) `cusspvz/node:0.3.6-onbuild`

![layers](https://images.microbadger.com/badges/image/cusspvz/node:0.3.6-development.svg) `cusspvz/node:0.3.6-development`


* **0.3.5** - [![build status](https://travis-ci.org/cusspvz/node.docker.svg?branch=version%2F0.3.5)](http://travis-ci.org/cusspvz/node.docker)

![layers](https://images.microbadger.com/badges/image/cusspvz/node:0.3.5.svg) `cusspvz/node:0.3.5`

![layers](https://images.microbadger.com/badges/image/cusspvz/node:0.3.5-onbuild.svg) `cusspvz/node:0.3.5-onbuild`

![layers](https://images.microbadger.com/badges/image/cusspvz/node:0.3.5-development.svg) `cusspvz/node:0.3.5-development`


* **0.3.4** - [![build status](https://travis-ci.org/cusspvz/node.docker.svg?branch=version%2F0.3.4)](http://travis-ci.org/cusspvz/node.docker)

![layers](https://images.microbadger.com/badges/image/cusspvz/node:0.3.4.svg) `cusspvz/node:0.3.4`

![layers](https://images.microbadger.com/badges/image/cusspvz/node:0.3.4-onbuild.svg) `cusspvz/node:0.3.4-onbuild`

![layers](https://images.microbadger.com/badges/image/cusspvz/node:0.3.4-development.svg) `cusspvz/node:0.3.4-development`


* **0.3.3** - [![build status](https://travis-ci.org/cusspvz/node.docker.svg?branch=version%2F0.3.3)](http://travis-ci.org/cusspvz/node.docker)

![layers](https://images.microbadger.com/badges/image/cusspvz/node:0.3.3.svg) `cusspvz/node:0.3.3`

![layers](https://images.microbadger.com/badges/image/cusspvz/node:0.3.3-onbuild.svg) `cusspvz/node:0.3.3-onbuild`

![layers](https://images.microbadger.com/badges/image/cusspvz/node:0.3.3-development.svg) `cusspvz/node:0.3.3-development`


* **0.3.2** - [![build status](https://travis-ci.org/cusspvz/node.docker.svg?branch=version%2F0.3.2)](http://travis-ci.org/cusspvz/node.docker)

![layers](https://images.microbadger.com/badges/image/cusspvz/node:0.3.2.svg) `cusspvz/node:0.3.2`

![layers](https://images.microbadger.com/badges/image/cusspvz/node:0.3.2-onbuild.svg) `cusspvz/node:0.3.2-onbuild`

![layers](https://images.microbadger.com/badges/image/cusspvz/node:0.3.2-development.svg) `cusspvz/node:0.3.2-development`


* **0.3.1** - [![build status](https://travis-ci.org/cusspvz/node.docker.svg?branch=version%2F0.3.1)](http://travis-ci.org/cusspvz/node.docker)

![layers](https://images.microbadger.com/badges/image/cusspvz/node:0.3.1.svg) `cusspvz/node:0.3.1`

![layers](https://images.microbadger.com/badges/image/cusspvz/node:0.3.1-onbuild.svg) `cusspvz/node:0.3.1-onbuild`

![layers](https://images.microbadger.com/badges/image/cusspvz/node:0.3.1-development.svg) `cusspvz/node:0.3.1-development`


* **0.3.0** - [![build status](https://travis-ci.org/cusspvz/node.docker.svg?branch=version%2F0.3.0)](http://travis-ci.org/cusspvz/node.docker)

![layers](https://images.microbadger.com/badges/image/cusspvz/node:0.3.0.svg) `cusspvz/node:0.3.0`

![layers](https://images.microbadger.com/badges/image/cusspvz/node:0.3.0-onbuild.svg) `cusspvz/node:0.3.0-onbuild`

![layers](https://images.microbadger.com/badges/image/cusspvz/node:0.3.0-development.svg) `cusspvz/node:0.3.0-development`


* **0.2.6** - [![build status](https://travis-ci.org/cusspvz/node.docker.svg?branch=version%2F0.2.6)](http://travis-ci.org/cusspvz/node.docker)

![layers](https://images.microbadger.com/badges/image/cusspvz/node:0.2.6.svg) `cusspvz/node:0.2.6`

![layers](https://images.microbadger.com/badges/image/cusspvz/node:0.2.6-onbuild.svg) `cusspvz/node:0.2.6-onbuild`

![layers](https://images.microbadger.com/badges/image/cusspvz/node:0.2.6-development.svg) `cusspvz/node:0.2.6-development`


* **0.2.5** - [![build status](https://travis-ci.org/cusspvz/node.docker.svg?branch=version%2F0.2.5)](http://travis-ci.org/cusspvz/node.docker)

![layers](https://images.microbadger.com/badges/image/cusspvz/node:0.2.5.svg) `cusspvz/node:0.2.5`

![layers](https://images.microbadger.com/badges/image/cusspvz/node:0.2.5-onbuild.svg) `cusspvz/node:0.2.5-onbuild`

![layers](https://images.microbadger.com/badges/image/cusspvz/node:0.2.5-development.svg) `cusspvz/node:0.2.5-development`


* **0.2.4** - [![build status](https://travis-ci.org/cusspvz/node.docker.svg?branch=version%2F0.2.4)](http://travis-ci.org/cusspvz/node.docker)

![layers](https://images.microbadger.com/badges/image/cusspvz/node:0.2.4.svg) `cusspvz/node:0.2.4`

![layers](https://images.microbadger.com/badges/image/cusspvz/node:0.2.4-onbuild.svg) `cusspvz/node:0.2.4-onbuild`

![layers](https://images.microbadger.com/badges/image/cusspvz/node:0.2.4-development.svg) `cusspvz/node:0.2.4-development`


* **0.2.3** - [![build status](https://travis-ci.org/cusspvz/node.docker.svg?branch=version%2F0.2.3)](http://travis-ci.org/cusspvz/node.docker)

![layers](https://images.microbadger.com/badges/image/cusspvz/node:0.2.3.svg) `cusspvz/node:0.2.3`

![layers](https://images.microbadger.com/badges/image/cusspvz/node:0.2.3-onbuild.svg) `cusspvz/node:0.2.3-onbuild`

![layers](https://images.microbadger.com/badges/image/cusspvz/node:0.2.3-development.svg) `cusspvz/node:0.2.3-development`


* **0.2.2** - [![build status](https://travis-ci.org/cusspvz/node.docker.svg?branch=version%2F0.2.2)](http://travis-ci.org/cusspvz/node.docker)

![layers](https://images.microbadger.com/badges/image/cusspvz/node:0.2.2.svg) `cusspvz/node:0.2.2`

![layers](https://images.microbadger.com/badges/image/cusspvz/node:0.2.2-onbuild.svg) `cusspvz/node:0.2.2-onbuild`

![layers](https://images.microbadger.com/badges/image/cusspvz/node:0.2.2-development.svg) `cusspvz/node:0.2.2-development`


* **0.2.1** - [![build status](https://travis-ci.org/cusspvz/node.docker.svg?branch=version%2F0.2.1)](http://travis-ci.org/cusspvz/node.docker)

![layers](https://images.microbadger.com/badges/image/cusspvz/node:0.2.1.svg) `cusspvz/node:0.2.1`

![layers](https://images.microbadger.com/badges/image/cusspvz/node:0.2.1-onbuild.svg) `cusspvz/node:0.2.1-onbuild`

![layers](https://images.microbadger.com/badges/image/cusspvz/node:0.2.1-development.svg) `cusspvz/node:0.2.1-development`


* **0.2.0** - [![build status](https://travis-ci.org/cusspvz/node.docker.svg?branch=version%2F0.2.0)](http://travis-ci.org/cusspvz/node.docker)

![layers](https://images.microbadger.com/badges/image/cusspvz/node:0.2.0.svg) `cusspvz/node:0.2.0`

![layers](https://images.microbadger.com/badges/image/cusspvz/node:0.2.0-onbuild.svg) `cusspvz/node:0.2.0-onbuild`

![layers](https://images.microbadger.com/badges/image/cusspvz/node:0.2.0-development.svg) `cusspvz/node:0.2.0-development`


* **0.1.104** - [![build status](https://travis-ci.org/cusspvz/node.docker.svg?branch=version%2F0.1.104)](http://travis-ci.org/cusspvz/node.docker)

![layers](https://images.microbadger.com/badges/image/cusspvz/node:0.1.104.svg) `cusspvz/node:0.1.104`

![layers](https://images.microbadger.com/badges/image/cusspvz/node:0.1.104-onbuild.svg) `cusspvz/node:0.1.104-onbuild`

![layers](https://images.microbadger.com/badges/image/cusspvz/node:0.1.104-development.svg) `cusspvz/node:0.1.104-development`


* **0.1.103** - [![build status](https://travis-ci.org/cusspvz/node.docker.svg?branch=version%2F0.1.103)](http://travis-ci.org/cusspvz/node.docker)

![layers](https://images.microbadger.com/badges/image/cusspvz/node:0.1.103.svg) `cusspvz/node:0.1.103`

![layers](https://images.microbadger.com/badges/image/cusspvz/node:0.1.103-onbuild.svg) `cusspvz/node:0.1.103-onbuild`

![layers](https://images.microbadger.com/badges/image/cusspvz/node:0.1.103-development.svg) `cusspvz/node:0.1.103-development`


* **0.1.102** - [![build status](https://travis-ci.org/cusspvz/node.docker.svg?branch=version%2F0.1.102)](http://travis-ci.org/cusspvz/node.docker)

![layers](https://images.microbadger.com/badges/image/cusspvz/node:0.1.102.svg) `cusspvz/node:0.1.102`

![layers](https://images.microbadger.com/badges/image/cusspvz/node:0.1.102-onbuild.svg) `cusspvz/node:0.1.102-onbuild`

![layers](https://images.microbadger.com/badges/image/cusspvz/node:0.1.102-development.svg) `cusspvz/node:0.1.102-development`


* **0.1.101** - [![build status](https://travis-ci.org/cusspvz/node.docker.svg?branch=version%2F0.1.101)](http://travis-ci.org/cusspvz/node.docker)

![layers](https://images.microbadger.com/badges/image/cusspvz/node:0.1.101.svg) `cusspvz/node:0.1.101`

![layers](https://images.microbadger.com/badges/image/cusspvz/node:0.1.101-onbuild.svg) `cusspvz/node:0.1.101-onbuild`

![layers](https://images.microbadger.com/badges/image/cusspvz/node:0.1.101-development.svg) `cusspvz/node:0.1.101-development`


* **0.1.100** - [![build status](https://travis-ci.org/cusspvz/node.docker.svg?branch=version%2F0.1.100)](http://travis-ci.org/cusspvz/node.docker)

![layers](https://images.microbadger.com/badges/image/cusspvz/node:0.1.100.svg) `cusspvz/node:0.1.100`

![layers](https://images.microbadger.com/badges/image/cusspvz/node:0.1.100-onbuild.svg) `cusspvz/node:0.1.100-onbuild`

![layers](https://images.microbadger.com/badges/image/cusspvz/node:0.1.100-development.svg) `cusspvz/node:0.1.100-development`


* **0.1.99** - [![build status](https://travis-ci.org/cusspvz/node.docker.svg?branch=version%2F0.1.99)](http://travis-ci.org/cusspvz/node.docker)

![layers](https://images.microbadger.com/badges/image/cusspvz/node:0.1.99.svg) `cusspvz/node:0.1.99`

![layers](https://images.microbadger.com/badges/image/cusspvz/node:0.1.99-onbuild.svg) `cusspvz/node:0.1.99-onbuild`

![layers](https://images.microbadger.com/badges/image/cusspvz/node:0.1.99-development.svg) `cusspvz/node:0.1.99-development`


* **0.1.98** - [![build status](https://travis-ci.org/cusspvz/node.docker.svg?branch=version%2F0.1.98)](http://travis-ci.org/cusspvz/node.docker)

![layers](https://images.microbadger.com/badges/image/cusspvz/node:0.1.98.svg) `cusspvz/node:0.1.98`

![layers](https://images.microbadger.com/badges/image/cusspvz/node:0.1.98-onbuild.svg) `cusspvz/node:0.1.98-onbuild`

![layers](https://images.microbadger.com/badges/image/cusspvz/node:0.1.98-development.svg) `cusspvz/node:0.1.98-development`


* **0.1.97** - [![build status](https://travis-ci.org/cusspvz/node.docker.svg?branch=version%2F0.1.97)](http://travis-ci.org/cusspvz/node.docker)

![layers](https://images.microbadger.com/badges/image/cusspvz/node:0.1.97.svg) `cusspvz/node:0.1.97`

![layers](https://images.microbadger.com/badges/image/cusspvz/node:0.1.97-onbuild.svg) `cusspvz/node:0.1.97-onbuild`

![layers](https://images.microbadger.com/badges/image/cusspvz/node:0.1.97-development.svg) `cusspvz/node:0.1.97-development`


* **0.1.96** - [![build status](https://travis-ci.org/cusspvz/node.docker.svg?branch=version%2F0.1.96)](http://travis-ci.org/cusspvz/node.docker)

![layers](https://images.microbadger.com/badges/image/cusspvz/node:0.1.96.svg) `cusspvz/node:0.1.96`

![layers](https://images.microbadger.com/badges/image/cusspvz/node:0.1.96-onbuild.svg) `cusspvz/node:0.1.96-onbuild`

![layers](https://images.microbadger.com/badges/image/cusspvz/node:0.1.96-development.svg) `cusspvz/node:0.1.96-development`


* **0.1.95** - [![build status](https://travis-ci.org/cusspvz/node.docker.svg?branch=version%2F0.1.95)](http://travis-ci.org/cusspvz/node.docker)

![layers](https://images.microbadger.com/badges/image/cusspvz/node:0.1.95.svg) `cusspvz/node:0.1.95`

![layers](https://images.microbadger.com/badges/image/cusspvz/node:0.1.95-onbuild.svg) `cusspvz/node:0.1.95-onbuild`

![layers](https://images.microbadger.com/badges/image/cusspvz/node:0.1.95-development.svg) `cusspvz/node:0.1.95-development`


* **0.1.94** - [![build status](https://travis-ci.org/cusspvz/node.docker.svg?branch=version%2F0.1.94)](http://travis-ci.org/cusspvz/node.docker)

![layers](https://images.microbadger.com/badges/image/cusspvz/node:0.1.94.svg) `cusspvz/node:0.1.94`

![layers](https://images.microbadger.com/badges/image/cusspvz/node:0.1.94-onbuild.svg) `cusspvz/node:0.1.94-onbuild`

![layers](https://images.microbadger.com/badges/image/cusspvz/node:0.1.94-development.svg) `cusspvz/node:0.1.94-development`


* **0.1.93** - [![build status](https://travis-ci.org/cusspvz/node.docker.svg?branch=version%2F0.1.93)](http://travis-ci.org/cusspvz/node.docker)

![layers](https://images.microbadger.com/badges/image/cusspvz/node:0.1.93.svg) `cusspvz/node:0.1.93`

![layers](https://images.microbadger.com/badges/image/cusspvz/node:0.1.93-onbuild.svg) `cusspvz/node:0.1.93-onbuild`

![layers](https://images.microbadger.com/badges/image/cusspvz/node:0.1.93-development.svg) `cusspvz/node:0.1.93-development`


* **0.1.92** - [![build status](https://travis-ci.org/cusspvz/node.docker.svg?branch=version%2F0.1.92)](http://travis-ci.org/cusspvz/node.docker)

![layers](https://images.microbadger.com/badges/image/cusspvz/node:0.1.92.svg) `cusspvz/node:0.1.92`

![layers](https://images.microbadger.com/badges/image/cusspvz/node:0.1.92-onbuild.svg) `cusspvz/node:0.1.92-onbuild`

![layers](https://images.microbadger.com/badges/image/cusspvz/node:0.1.92-development.svg) `cusspvz/node:0.1.92-development`


* **0.1.91** - [![build status](https://travis-ci.org/cusspvz/node.docker.svg?branch=version%2F0.1.91)](http://travis-ci.org/cusspvz/node.docker)

![layers](https://images.microbadger.com/badges/image/cusspvz/node:0.1.91.svg) `cusspvz/node:0.1.91`

![layers](https://images.microbadger.com/badges/image/cusspvz/node:0.1.91-onbuild.svg) `cusspvz/node:0.1.91-onbuild`

![layers](https://images.microbadger.com/badges/image/cusspvz/node:0.1.91-development.svg) `cusspvz/node:0.1.91-development`


* **0.1.90** - [![build status](https://travis-ci.org/cusspvz/node.docker.svg?branch=version%2F0.1.90)](http://travis-ci.org/cusspvz/node.docker)

![layers](https://images.microbadger.com/badges/image/cusspvz/node:0.1.90.svg) `cusspvz/node:0.1.90`

![layers](https://images.microbadger.com/badges/image/cusspvz/node:0.1.90-onbuild.svg) `cusspvz/node:0.1.90-onbuild`

![layers](https://images.microbadger.com/badges/image/cusspvz/node:0.1.90-development.svg) `cusspvz/node:0.1.90-development`


* **0.1.33** - [![build status](https://travis-ci.org/cusspvz/node.docker.svg?branch=version%2F0.1.33)](http://travis-ci.org/cusspvz/node.docker)

![layers](https://images.microbadger.com/badges/image/cusspvz/node:0.1.33.svg) `cusspvz/node:0.1.33`

![layers](https://images.microbadger.com/badges/image/cusspvz/node:0.1.33-onbuild.svg) `cusspvz/node:0.1.33-onbuild`

![layers](https://images.microbadger.com/badges/image/cusspvz/node:0.1.33-development.svg) `cusspvz/node:0.1.33-development`


* **0.1.32** - [![build status](https://travis-ci.org/cusspvz/node.docker.svg?branch=version%2F0.1.32)](http://travis-ci.org/cusspvz/node.docker)

![layers](https://images.microbadger.com/badges/image/cusspvz/node:0.1.32.svg) `cusspvz/node:0.1.32`

![layers](https://images.microbadger.com/badges/image/cusspvz/node:0.1.32-onbuild.svg) `cusspvz/node:0.1.32-onbuild`

![layers](https://images.microbadger.com/badges/image/cusspvz/node:0.1.32-development.svg) `cusspvz/node:0.1.32-development`


* **0.1.31** - [![build status](https://travis-ci.org/cusspvz/node.docker.svg?branch=version%2F0.1.31)](http://travis-ci.org/cusspvz/node.docker)

![layers](https://images.microbadger.com/badges/image/cusspvz/node:0.1.31.svg) `cusspvz/node:0.1.31`

![layers](https://images.microbadger.com/badges/image/cusspvz/node:0.1.31-onbuild.svg) `cusspvz/node:0.1.31-onbuild`

![layers](https://images.microbadger.com/badges/image/cusspvz/node:0.1.31-development.svg) `cusspvz/node:0.1.31-development`


* **0.1.30** - [![build status](https://travis-ci.org/cusspvz/node.docker.svg?branch=version%2F0.1.30)](http://travis-ci.org/cusspvz/node.docker)

![layers](https://images.microbadger.com/badges/image/cusspvz/node:0.1.30.svg) `cusspvz/node:0.1.30`

![layers](https://images.microbadger.com/badges/image/cusspvz/node:0.1.30-onbuild.svg) `cusspvz/node:0.1.30-onbuild`

![layers](https://images.microbadger.com/badges/image/cusspvz/node:0.1.30-development.svg) `cusspvz/node:0.1.30-development`


* **0.1.29** - [![build status](https://travis-ci.org/cusspvz/node.docker.svg?branch=version%2F0.1.29)](http://travis-ci.org/cusspvz/node.docker)

![layers](https://images.microbadger.com/badges/image/cusspvz/node:0.1.29.svg) `cusspvz/node:0.1.29`

![layers](https://images.microbadger.com/badges/image/cusspvz/node:0.1.29-onbuild.svg) `cusspvz/node:0.1.29-onbuild`

![layers](https://images.microbadger.com/badges/image/cusspvz/node:0.1.29-development.svg) `cusspvz/node:0.1.29-development`


* **0.1.28** - [![build status](https://travis-ci.org/cusspvz/node.docker.svg?branch=version%2F0.1.28)](http://travis-ci.org/cusspvz/node.docker)

![layers](https://images.microbadger.com/badges/image/cusspvz/node:0.1.28.svg) `cusspvz/node:0.1.28`

![layers](https://images.microbadger.com/badges/image/cusspvz/node:0.1.28-onbuild.svg) `cusspvz/node:0.1.28-onbuild`

![layers](https://images.microbadger.com/badges/image/cusspvz/node:0.1.28-development.svg) `cusspvz/node:0.1.28-development`


* **0.1.27** - [![build status](https://travis-ci.org/cusspvz/node.docker.svg?branch=version%2F0.1.27)](http://travis-ci.org/cusspvz/node.docker)

![layers](https://images.microbadger.com/badges/image/cusspvz/node:0.1.27.svg) `cusspvz/node:0.1.27`

![layers](https://images.microbadger.com/badges/image/cusspvz/node:0.1.27-onbuild.svg) `cusspvz/node:0.1.27-onbuild`

![layers](https://images.microbadger.com/badges/image/cusspvz/node:0.1.27-development.svg) `cusspvz/node:0.1.27-development`


* **0.1.26** - [![build status](https://travis-ci.org/cusspvz/node.docker.svg?branch=version%2F0.1.26)](http://travis-ci.org/cusspvz/node.docker)

![layers](https://images.microbadger.com/badges/image/cusspvz/node:0.1.26.svg) `cusspvz/node:0.1.26`

![layers](https://images.microbadger.com/badges/image/cusspvz/node:0.1.26-onbuild.svg) `cusspvz/node:0.1.26-onbuild`

![layers](https://images.microbadger.com/badges/image/cusspvz/node:0.1.26-development.svg) `cusspvz/node:0.1.26-development`


* **0.1.25** - [![build status](https://travis-ci.org/cusspvz/node.docker.svg?branch=version%2F0.1.25)](http://travis-ci.org/cusspvz/node.docker)

![layers](https://images.microbadger.com/badges/image/cusspvz/node:0.1.25.svg) `cusspvz/node:0.1.25`

![layers](https://images.microbadger.com/badges/image/cusspvz/node:0.1.25-onbuild.svg) `cusspvz/node:0.1.25-onbuild`

![layers](https://images.microbadger.com/badges/image/cusspvz/node:0.1.25-development.svg) `cusspvz/node:0.1.25-development`


* **0.1.24** - [![build status](https://travis-ci.org/cusspvz/node.docker.svg?branch=version%2F0.1.24)](http://travis-ci.org/cusspvz/node.docker)

![layers](https://images.microbadger.com/badges/image/cusspvz/node:0.1.24.svg) `cusspvz/node:0.1.24`

![layers](https://images.microbadger.com/badges/image/cusspvz/node:0.1.24-onbuild.svg) `cusspvz/node:0.1.24-onbuild`

![layers](https://images.microbadger.com/badges/image/cusspvz/node:0.1.24-development.svg) `cusspvz/node:0.1.24-development`


* **0.1.23** - [![build status](https://travis-ci.org/cusspvz/node.docker.svg?branch=version%2F0.1.23)](http://travis-ci.org/cusspvz/node.docker)

![layers](https://images.microbadger.com/badges/image/cusspvz/node:0.1.23.svg) `cusspvz/node:0.1.23`

![layers](https://images.microbadger.com/badges/image/cusspvz/node:0.1.23-onbuild.svg) `cusspvz/node:0.1.23-onbuild`

![layers](https://images.microbadger.com/badges/image/cusspvz/node:0.1.23-development.svg) `cusspvz/node:0.1.23-development`


* **0.1.22** - [![build status](https://travis-ci.org/cusspvz/node.docker.svg?branch=version%2F0.1.22)](http://travis-ci.org/cusspvz/node.docker)

![layers](https://images.microbadger.com/badges/image/cusspvz/node:0.1.22.svg) `cusspvz/node:0.1.22`

![layers](https://images.microbadger.com/badges/image/cusspvz/node:0.1.22-onbuild.svg) `cusspvz/node:0.1.22-onbuild`

![layers](https://images.microbadger.com/badges/image/cusspvz/node:0.1.22-development.svg) `cusspvz/node:0.1.22-development`


* **0.1.21** - [![build status](https://travis-ci.org/cusspvz/node.docker.svg?branch=version%2F0.1.21)](http://travis-ci.org/cusspvz/node.docker)

![layers](https://images.microbadger.com/badges/image/cusspvz/node:0.1.21.svg) `cusspvz/node:0.1.21`

![layers](https://images.microbadger.com/badges/image/cusspvz/node:0.1.21-onbuild.svg) `cusspvz/node:0.1.21-onbuild`

![layers](https://images.microbadger.com/badges/image/cusspvz/node:0.1.21-development.svg) `cusspvz/node:0.1.21-development`


* **0.1.20** - [![build status](https://travis-ci.org/cusspvz/node.docker.svg?branch=version%2F0.1.20)](http://travis-ci.org/cusspvz/node.docker)

![layers](https://images.microbadger.com/badges/image/cusspvz/node:0.1.20.svg) `cusspvz/node:0.1.20`

![layers](https://images.microbadger.com/badges/image/cusspvz/node:0.1.20-onbuild.svg) `cusspvz/node:0.1.20-onbuild`

![layers](https://images.microbadger.com/badges/image/cusspvz/node:0.1.20-development.svg) `cusspvz/node:0.1.20-development`


* **0.1.19** - [![build status](https://travis-ci.org/cusspvz/node.docker.svg?branch=version%2F0.1.19)](http://travis-ci.org/cusspvz/node.docker)

![layers](https://images.microbadger.com/badges/image/cusspvz/node:0.1.19.svg) `cusspvz/node:0.1.19`

![layers](https://images.microbadger.com/badges/image/cusspvz/node:0.1.19-onbuild.svg) `cusspvz/node:0.1.19-onbuild`

![layers](https://images.microbadger.com/badges/image/cusspvz/node:0.1.19-development.svg) `cusspvz/node:0.1.19-development`


* **0.1.18** - [![build status](https://travis-ci.org/cusspvz/node.docker.svg?branch=version%2F0.1.18)](http://travis-ci.org/cusspvz/node.docker)

![layers](https://images.microbadger.com/badges/image/cusspvz/node:0.1.18.svg) `cusspvz/node:0.1.18`

![layers](https://images.microbadger.com/badges/image/cusspvz/node:0.1.18-onbuild.svg) `cusspvz/node:0.1.18-onbuild`

![layers](https://images.microbadger.com/badges/image/cusspvz/node:0.1.18-development.svg) `cusspvz/node:0.1.18-development`


* **0.1.17** - [![build status](https://travis-ci.org/cusspvz/node.docker.svg?branch=version%2F0.1.17)](http://travis-ci.org/cusspvz/node.docker)

![layers](https://images.microbadger.com/badges/image/cusspvz/node:0.1.17.svg) `cusspvz/node:0.1.17`

![layers](https://images.microbadger.com/badges/image/cusspvz/node:0.1.17-onbuild.svg) `cusspvz/node:0.1.17-onbuild`

![layers](https://images.microbadger.com/badges/image/cusspvz/node:0.1.17-development.svg) `cusspvz/node:0.1.17-development`


* **0.1.16** - [![build status](https://travis-ci.org/cusspvz/node.docker.svg?branch=version%2F0.1.16)](http://travis-ci.org/cusspvz/node.docker)

![layers](https://images.microbadger.com/badges/image/cusspvz/node:0.1.16.svg) `cusspvz/node:0.1.16`

![layers](https://images.microbadger.com/badges/image/cusspvz/node:0.1.16-onbuild.svg) `cusspvz/node:0.1.16-onbuild`

![layers](https://images.microbadger.com/badges/image/cusspvz/node:0.1.16-development.svg) `cusspvz/node:0.1.16-development`


* **0.1.15** - [![build status](https://travis-ci.org/cusspvz/node.docker.svg?branch=version%2F0.1.15)](http://travis-ci.org/cusspvz/node.docker)

![layers](https://images.microbadger.com/badges/image/cusspvz/node:0.1.15.svg) `cusspvz/node:0.1.15`

![layers](https://images.microbadger.com/badges/image/cusspvz/node:0.1.15-onbuild.svg) `cusspvz/node:0.1.15-onbuild`

![layers](https://images.microbadger.com/badges/image/cusspvz/node:0.1.15-development.svg) `cusspvz/node:0.1.15-development`


* **0.1.14** - [![build status](https://travis-ci.org/cusspvz/node.docker.svg?branch=version%2F0.1.14)](http://travis-ci.org/cusspvz/node.docker)

![layers](https://images.microbadger.com/badges/image/cusspvz/node:0.1.14.svg) `cusspvz/node:0.1.14`

![layers](https://images.microbadger.com/badges/image/cusspvz/node:0.1.14-onbuild.svg) `cusspvz/node:0.1.14-onbuild`

![layers](https://images.microbadger.com/badges/image/cusspvz/node:0.1.14-development.svg) `cusspvz/node:0.1.14-development`


## Developing

### Building image
```bash
VERSION="0.12.7" make build
```