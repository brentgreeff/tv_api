# TV API

## Development setup

`docker-compose up`

Check services are running:
`docker-compose ps`

Setup DB:
`docker-compose exec api bin/rails db:create db:migrate`

Access Adminer:
http://localhost:8080/?server=database&username=root&db=app_development
password: root

## Run tests

`docker-compose exec api bin/guard`

Press [Enter]

## Architectural considerations

### Versioning
(not implemented at this time)

Supporting multiple versions indefinitely can be difficult & potentially unnecessary if the API is internal. I like Github's method of using Accept headers instead of versioned URLs - https://developer.github.com/v3/versions/

### Performance

ROM is very interesting - https://rom-rb.org/blog/rom-5-0-and-rom-sql-3-0-released/ - could have performance advantages, but looks experimental still.

### Consistent

### Stable

### Well documented
