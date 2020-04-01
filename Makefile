# Variables

DOCKER_COMPOSE = docker-compose -f docker-compose.yml -f docker-compose.tools.yml

PHP_RUN = $(DOCKER_COMPOSE) exec --user=root php

PHP_CLI_RUN = $(PHP_RUN) php -d memory_limit=-1


# -- Cmd --

install:
	$(DOCKER_COMPOSE) build

start:
	$(DOCKER_COMPOSE) up -d

stop:
	$(DOCKER_COMPOSE) stop

ps:
	$(DOCKER_COMPOSE) ps

down:
	$(DOCKER_COMPOSE) down

php:
	$(PHP_RUN) sh
