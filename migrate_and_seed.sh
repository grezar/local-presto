#!/bin/bash

echo "migrating..."
mysql -u root -P 33061 -h 127.0.0.1 < sql/migration/*.sql
mysql -u root -P 33062 -h 127.0.0.1 < sql/migration/*.sql

echo "seeding..."
mysql -u root -P 33061 -h 127.0.0.1 < sql/seed/*.sql
mysql -u root -P 33062 -h 127.0.0.1 < sql/seed/*.sql

echo "finish"
