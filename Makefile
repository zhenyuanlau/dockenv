# SUBDIRS := $(shell ls -l | grep ^d | awk '{if($$9 != "adhoc") print $$9}')

.PHONY: net
net:
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

.PHONY: up4v
up4v:
	$(MAKE) -C hadoop up

.PHONY: build
build:
	$(MAKE) -C hadoop $@

.PHONY: clean
clean:
	docker rm $$(docker ps -a -f status=exited -q)

.PHONY: misc-up
misc-up:
	$(MAKE) -C clickhouse up
	$(MAKE) -C aerospike up
	$(MAKE) -C postgres up
	$(MAKE) -C redis up 

.PHONY: misc-down
misc-down:
	$(MAKE) -C clickhouse down
	$(MAKE) -C aerospike down
	$(MAKE) -C postgres down
	$(MAKE) -C redis down 

