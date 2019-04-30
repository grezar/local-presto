# presto-sandbox

## Usage

### Startup Containers

```
docker-compose up
```

### Execute query

Run presto-cli container and start shell in interactive mode.
```
docker-compose run --rm presto-cli /bin/bash
```

Execute query on mysql through presto-cli.
```
presto-cli --server coordinator:8080 --catalog first_mysql --execute 'show schemas'
```

### Setup database
First, you need to initialize database.
```
mysql -u root -P 33061 -h 127.0.0.1 < sql/initialize.sql # first_mysql
mysql -u root -P 33062 -h 127.0.0.1 < sql/initialize.sql # second_mysql
```

Run setup script keeping mysql container runnning.

```
./migrate_and_seed.sh
```
