POETRY_RUN_CMD := poetry run
DOCKER_COMPOSE_CMD := docker-compose
DOCKER_COMPOSE_RUN := docker-compose run app

default: help

.SILENT: help 

.PHONY: help
help: # Show help for each of the Makefile recipes.
	@grep -E '^[a-zA-Z0-9 -]+:.*#'  Makefile | sort | while read -r l; do printf "\033[1;32m$$(echo $$l | cut -f 1 -d':')\033[00m:$$(echo $$l | cut -f 2- -d'#')\n"; done


.PHONY: test
test: # 🧪 Run tests in poetry shell
	$(DOCKER_COMPOSE_RUN) $(POETRY_RUN_CMD) pytest --cov=app --cov-report term-missing



.PHONY: shell 
shell: # get a bash shell in the main service container 
	$(DOCKER_COMPOSE_RUN) bash 


.PHONY: test-verbose
test-verbose: # 🧪 Run tests with verbose output (pytest -s)
		$(DOCKER_COMPOSE_RUN) $(POETRY_RUN_CMD) pytest --cov=app --cov-report term-missing -s

.PHONY: logs 
logs: # Start the API server in docker
	$(DOCKER_COMPOSE_CMD) logs -f


.PHONY: docker compose up
up: # ⭐ Run checks that should run successfully before creating a pull request
	$(DOCKER_COMPOSE_CMD) up -d


.PHONY: down 
down: # docker compose down 
	$(DOCKER_COMPOSE_CMD) down 


.PHONY: build
build: # docker compose build
	$(DOCKER_COMPOSE_CMD) build


.PHONY: build-no-cache
build-no-cache: # docker compose build --no-cache
	$(DOCKER_COMPOSE_CMD) build --no-cache
