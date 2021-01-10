
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