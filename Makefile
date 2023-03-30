# SUBDIRS := $(shell ls -l | grep ^d | awk '{if($$9 != "adhoc") print $$9}')

.PHONY: up
up:
	$(MAKE) -C clickhouse $@
	$(MAKE) -C redis-stack $@

.PHONY: down
down:
	$(MAKE) -C clickhouse $@
	$(MAKE) -C redis-stack $@
