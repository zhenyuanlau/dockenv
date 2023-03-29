.PHONY: template
template:
	$(MAKE) -C clickhouse
.PHONY: down
down:
	$(MAKE) -C clickhouse

