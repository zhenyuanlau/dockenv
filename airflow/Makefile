.PHONY: up
up:
	docker compose up airflow-init && docker compose up -d

.PHONY: down
down:
	docker-compose down

.PHONY: update
update:
	curl -LfO 'https://airflow.apache.org/docs/apache-airflow/2.6.0/docker-compose.yaml'

.PHONY: cli
cli:
	curl -LfO 'https://airflow.apache.org/docs/apache-airflow/2.6.0/airflow.sh'
	chmod +x airflow.sh

.PHONY: ui
ui:
	open http://localhost:8080 # airflow/airflow
