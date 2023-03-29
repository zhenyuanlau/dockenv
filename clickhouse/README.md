# ClickHouse

## Keeper verify

```shell
echo ruok | nc localhost 9181
```

## SQL

```sql
SHOW clusters;

CREATE DATABASE db1 ON CLUSTER 'cluster_2S_1R';

CREATE TABLE db1.table1 on cluster 'cluster_2S_1R'
(
    `id` UInt64,
    `column1` String
)
ENGINE = MergeTree
ORDER BY column1;

INSERT INTO db1.table1 (id, column1) VALUES (1, 'abc'),
                                            (2, 'def');

INSERT INTO db1.table1 (id, column1) VALUES (3, 'ghi'),
                                            (4, 'jkl');

SELECT * FROM db1.table1;

CREATE TABLE db1.dist_table (
    id UInt64,
    column1 String
)
ENGINE = Distributed(cluster_2S_1R,db1,table1);

SELECT * FROM db1.dist_table;
```
