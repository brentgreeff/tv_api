# TV API

[![Maintainability](https://api.codeclimate.com/v1/badges/84fbf16dd2a019ec6a1c/maintainability)](https://codeclimate.com/github/brentgreeff/tv_api/maintainability)

[![Test Coverage](https://api.codeclimate.com/v1/badges/84fbf16dd2a019ec6a1c/test_coverage)](https://codeclimate.com/github/brentgreeff/tv_api/test_coverage)

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

Press [Enter] - to run all tests.

As is the recommendation by the Rails core team & the RSpec team I am writing request specs since they exercise the whole stack. Guard is configured to run the corresponding request_spec when the controller is saved.

## Architectural considerations

I am a fan of [Domain Driven Design](https://www.amazon.com/Domain-Driven-Design-Tackling-Complexity-Software/dp/0321125215). I read it many years ago, but I think the core idea was to model the system in the same language & terms used by the client. This could be the internal client or business analyst. The goal being that as the system evolves, the development team & the business at large use the same keywords. For example, the client could use the term "content" and the developers have implemented this in the code as "entity". The reason I bring this up is because of the duplication of fields. If I understand the description correctly then both Season & Episode have the same fields [title, plot, number]. Movie has [title & plot]. It seems to point to using STI but I am not fond of this pattern. As the app develops in the future these concepts are sure to diverge in how the behave.


### Versioning
(not implemented at this time)

Supporting multiple versions indefinitely can be difficult & potentially unnecessary if the API is internal. I like Github's method of using Accept headers instead of versioned URLs - https://developer.github.com/v3/versions/

### Performance

#### Alternatives to Rails

I initially considered Roda because of its performance profile, but Hanami looks even more appealing especially for an API - http://hanamirb.org/blog/2020/02/26/introducing-hanami-api.html

#### serialization
I spent quite a bit of time thinking about serializers. AMS is easy to use, but slow, and the future of that project is uncertain. I have also used fast_jsonapi - which is a questionable choice for this exercise. I looked through all the open-source Rakuten github repos - nothing API related it seems. jsonapi-rb has good performance & low memory usage but follows the JSON:API spec. There could be some reasons not to follow that spec: https://apisyouwonthate.com/blog/lets-stop-building-apis-around-a-network-hack

#### Database
ROM is very interesting - https://rom-rb.org/blog/rom-5-0-and-rom-sql-3-0-released/ - could have performance advantages, but looks experimental still.

### Consistent

### Stable

### Well documented
