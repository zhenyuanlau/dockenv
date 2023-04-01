.PHONY: up
up:
	docker compose up airflow-init && docker compose up -d

.PHONY: down
down:
	docker-compose down

.PHONY: update
update:
	curl -LfO 'https://airflow.apache.org/docs/apache-airflow/2.5.1/compose.yaml'

