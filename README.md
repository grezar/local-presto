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
