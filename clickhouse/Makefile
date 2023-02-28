TEMPLATE_DIR := ./templates
CONFIG_IDR := ./configs

.PHONY: template
template:
	rm -rf ${CONFIG_IDR} ; \
	mkdir -p ${CONFIG_IDR}/ch1 ; \
	mkdir -p ${CONFIG_IDR}/ch2 ; \
	mkdir -p ${CONFIG_IDR}/ch3 ; \
	mkdir -p ${CONFIG_IDR}/ch4 ; \

	SERVER_ID=1 envsubst < ${TEMPLATE_DIR}/enable_keeper.xml > ${CONFIG_IDR}/ch1/enable_keeper.xml
	REPLICA=r1 SHARD=s1 envsubst < ${TEMPLATE_DIR}/macros.xml > ${CONFIG_IDR}/ch1/macros.xml
	cp ${TEMPLATE_DIR}/remote_servers.xml ${TEMPLATE_DIR}/use_keeper.xml ${TEMPLATE_DIR}/listen_host.xml ${CONFIG_IDR}/ch1/

	SERVER_ID=2 envsubst < ${TEMPLATE_DIR}/enable_keeper.xml > ${CONFIG_IDR}/ch2/enable_keeper.xml
	REPLICA=r2 SHARD=s1 envsubst < ${TEMPLATE_DIR}/macros.xml > ${CONFIG_IDR}/ch2/macros.xml
	cp ${TEMPLATE_DIR}/remote_servers.xml ${TEMPLATE_DIR}/use_keeper.xml ${TEMPLATE_DIR}/listen_host.xml ${CONFIG_IDR}/ch2/

	SERVER_ID=3 envsubst < ${TEMPLATE_DIR}/enable_keeper.xml > ${CONFIG_IDR}/ch3/enable_keeper.xml
	REPLICA=r1 SHARD=s2 envsubst < ${TEMPLATE_DIR}/macros.xml > ${CONFIG_IDR}/ch3/macros.xml
	cp ${TEMPLATE_DIR}/remote_servers.xml ${TEMPLATE_DIR}/use_keeper.xml ${TEMPLATE_DIR}/listen_host.xml ${CONFIG_IDR}/ch3/

	REPLICA=r2 SHARD=s2 envsubst < ${TEMPLATE_DIR}/macros.xml > ${CONFIG_IDR}/ch4/macros.xml
	cp ${TEMPLATE_DIR}/remote_servers.xml ${TEMPLATE_DIR}/use_keeper.xml ${TEMPLATE_DIR}/listen_host.xml ${CONFIG_IDR}/ch4/

.PHONY: up
up:
	docker-compose up

.PHONY: keeper-check
keeper-check:
	echo ruok | nc 127.0.0.1 9181
