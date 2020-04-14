NAME    ?= mccutchen/dnsmasq-local
VERSION ?= $(shell git rev-parse --short HEAD)
TAG     := $(NAME):$(VERSION)

build:
	docker build -t $(TAG) .

push: build
	docker push $(TAG)
