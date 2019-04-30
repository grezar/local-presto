#!/bin/bash

echo "migrating..."
mysql -u root -P 33061 -h 127.0.0.1 < sql/first_mysql/migration/*.sql
mysql -u root -P 33062 -h 127.0.0.1 < sql/second_mysql/migration/*.sql

echo "seeding..."
mysql -u root -P 33061 -h 127.0.0.1 < sql/first_mysql/seed/*.sql
mysql -u root -P 33062 -h 127.0.0.1 < sql/second_mysql/seed/*.sql

echo "finish"
