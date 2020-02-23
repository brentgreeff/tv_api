# TV API

## Development setup

`docker-compose up`

Check services are running:
`docker-compose ps`

Setup DB:
`docker-compose exec api bin/rails db:create db:migrate`

## Run tests

`docker-compose exec api bin/guard`

Press [Enter]
