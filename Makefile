
VERSION ?= latest
LATEST_VERSION := $(shell sed -n '2p' versions)
REPO_PATH := $(shell pwd)

ifeq ($(VERSION),latest)
	VERSION := $(LATEST_VERSION)
	TAG := latest
else
	TAG := $(VERSION)
endif

VERSION_PATH := version/${TAG}

clean: clean-all-docker-images

run: build
	@docker run --rm -ti cusspvz/node:${TAG}

run-bash: build
	@docker run --rm -ti cusspvz/node:${TAG} /bin/login.sh

fetch-versions:
	@echo "latest" > ./versions
	@wget https://nodejs.org/dist/ -O - 2>/dev/null | \
	grep "/\">v" | grep -v isaacs-manual | \
	sed -e 's/<a href="v\(.*\)\/".*/\1/' | \
	sort -t . -k1,1nr -k2,1nr -k3,1nr \