## 10-Dec-2015
* Updated node versions

## 12-Nov-2015

* Added `docker-compose` into `development` image
* Added `rancher-compose` into `development` image

## 11-Nov-2015

* Changed `dind` to `development` just because we ended up to use more than just
a **Docker-in-Docker** solution on CI.

## 10-Nov-2015

* Added Docker-in-Docker image so we can test before build, all on the same
image.
* Added recent versions: `5.0.0` `4.2.2` `4.2.1`
* Seems that older versions wasn't here, added as also on versions
* Script for fetching versions was changed to don't include `isaacs-manual`

## 21-Out-2015

* Upgrade *Alpine* packages before `npm install` command

## 14-Out-2015

* Added version `4.2.0`

## 9-Out-2015

* Added `test` command which proxies to `npm test`