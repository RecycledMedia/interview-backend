# README

## Installation
### Dependencies
**Note**: Execute commands below while in `rails-backend` directory
1. Make sure you have at least Ruby 2.3
2. Install bundler
```sh
gem install bundler
```
3. Install project dependencies
```sh
bundle install
```

### Database setup
1. Create database, migrate, and setup test database
```sh
bundle exec rails db:create db:migrate db:test:prepare
```
2. Seed database with test data
```sh
bundle exec rails db:seed
```
**Note**: If you want to force a re-seed of the database, use `FORCE_SEED`
```sh
FORCE_SEED=true bundle exec rails db:seed
```

### Run tests
```sh
bundle exec rspec
```


### Run local server
```sh
bundle exec rails s -p 4000
```

## Existing endpoints
1. GET all users
```sh
curl http://localhost:4000/users
```
2. GET all items
```sh
curl http://localhost:4000/items
```
