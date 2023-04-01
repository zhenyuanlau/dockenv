.PHONY: build
build:
	docker build ./docker/hadoop -t hadoop:latest
	docker build -t namenode:latest ./docker/namenode/
	docker build ./docker/datanode -t datanode:latest

.PHONY: up
up: build
	docker compose up -d

.PHONY: down
down:
	docker-compose down
