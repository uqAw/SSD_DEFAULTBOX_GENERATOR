
VERSION ?= latest
LATEST_VERSION := $(shell sed -n '2p' versions)
REPO_PATH := $(shell pwd)

ifeq ($(VERSION),latest)