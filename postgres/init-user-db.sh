#!/bin/bash

set -e

# database
psql -v ON_ERROR_STOP=1 --username "$POSTGRES_USER" --dbname "$POSTGRES_DB" <<-EOSQL
	CREATE DATABASE test;
	GRANT ALL PRIVILEGES ON DATABASE test TO postgres;
EOSQL

# schema
psql -v ON_ERROR_STOP=1 --username "$POSTGRES_USER" --dbname test <<-EOSQL
    CREATE TABLE IF NOT EXISTS users(
        id         SERIAL PRIMARY KEY,
        name       TEXT NOT NULL,
        age        INTEGER NOT NULL
    );
EOSQL

# data