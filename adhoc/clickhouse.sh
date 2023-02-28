docker run -d -p 18123:8123 -p 19000:9000 \
    --name clickhouse \
    --ulimit nofile=262144:262144 \
    -e CLICKHOUSE_USER=root -e CLICKHOUSE_PASSWORD=root \
    bitnami/clickhouse:latest
