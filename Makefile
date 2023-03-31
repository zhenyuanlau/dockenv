# SUBDIRS := $(shell ls -l | grep ^d | awk '{if($$9 != "adhoc") print $$9}')

.PHONY: external
external:
	docker network ls | grep compose > /dev/null || docker network create compose

.PHONY: up
up: external
	$(MAKE) -C clickhouse $@
	$(MAKE) -C rabbitmq $@
	$(MAKE) -C redis $@
	$(MAKE) -C postgres $@

.PHONY: down
down:
	$(MAKE) -C clickhouse $@
	$(MAKE) -C rabbitmq $@
	$(MAKE) -C redis $@
	$(MAKE) -C postgres $@
