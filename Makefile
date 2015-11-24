CURRENT_DIRECTORY := $(shell pwd)

build:
	@docker build --tag=espressodev/apache-drupal-8:latest $(CURRENT_DIRECTORY)

build-no-cache:
	@docker build --no-cache --tag=espressodev/apache-drupal-8:latest $(CURRENT_DIRECTORY)

.PHONY: build