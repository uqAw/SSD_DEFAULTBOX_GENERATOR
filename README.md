
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
