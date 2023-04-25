.PHONY: up
up:
	docker compose up -d

.PHONY: down
down:
	docker-compose down -v

.PHONY: sql
sql:
	docker rm -f aerospike-aql
	docker run -ti --name aerospike-aql --rm aerospike/aerospike-tools:latest aql -h host.docker.internal

.PHONY: asadm
asadm:
	docker rm -f aerospike-asadm 
	docker run -ti --name aerospike-asadm --rm aerospike/aerospike-tools:latest asadm -h host.docker.internal
