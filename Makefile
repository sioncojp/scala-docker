.PHONY: help build run docker/run

help:
	@awk -F ':|##' '/^[^\t].+?:.*?##/ { printf "\033[36m%-22s\033[0m %s\n", $$1, $$NF }' $(MAKEFILE_LIST)

all: ## run
	@sbt run

build: ## docker build
	@sbt docker:publishLocal

run: ## docker起動
	@docker run --rm scala-docker