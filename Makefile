.PHONY: help
help: ## Print this help message and exit
	@echo Usage:
	@echo "  make [target]"
	@echo
	@echo Targets:
	@awk -F ':|##' \
		'/^[^\t].+?:.*?##/ {\
			printf "  %-30s %s\n", $$1, $$NF \
		 }' $(MAKEFILE_LIST)

.PHONY: build
build: ## Build the docker container
	docker-compose -f devstack/docker-compose.yaml build

.PHONY: up
up: ## Run the container detached from shell
	docker-compose -f devstack/docker-compose.yaml up -d

.PHONY: down
down: ## Tear down the containers
	docker-compose -f devstack/docker-compose.yaml down
