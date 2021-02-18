include $(ENV_FILE)

# docker specific
ENV_FILE := ../.env
COMPOSE_FILE := docker/cron-compose.yml
DOCKER := PYTHON_VERSION=$(PYTHON_VERSION) docker-compose -p Storage -f $(COMPOSE_FILE) --env-file $(ENV_FILE)
DOCKER_UP := $(DOCKER) up  --remove-orphans -d --no-build
DOCKER_RUN := $(DOCKER) run --rm
DOCKER_BUILD := $(DOCKER) build
DOCKER_STOP := $(DOCKER) rm --force --stop
DOCKER_EXEC := $(DOCKER) exec
SERVICES := nsync


install_cronsync:
	pip install -e .

build_cronsync:
	$(DOCKER_BUILD)

deploy_cronsync:
	$(DOCKER_UP)

exec_cronsync:
	$(DOCKER_EXEC) $(SERVICES) bash


clean:
	@find ./ -name '*.pyc' -exec rm -f {} \;
	@find ./ -name '*.pyo' -exec rm -f {} \;
	@find ./ -name '*~' -exec rm -f {} \;
	rm -rf .cache
	rm -rf build
	rm -rf dist
	rm -rf *.egg-info