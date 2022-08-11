# Welcome to Assunto

[![Maintainability](https://api.codeclimate.com/v1/badges/a066f4d9951edad50d4a/maintainability)](https://codeclimate.com/github/grazielevasconcelos/assunto-services/maintainability)

# Assunto

Start a good conversation with an interesting topic.

## Requirements

The project requires [3.1.2](https://www.ruby-lang.org/en/news/2022/04/12/ruby-3-1-2-released/).

## Useful Rake commands

The project makes use of rake to help you out carrying some common tasks, such as building the project or running it.

### Development

Install bundler, and all needed gems with:

```console
$ gem install bundler
$ bundle install
```

### Run the tests

```console
$ bundle exec rake specs
```

### Run the application

Run the application which will be listening on port `9292`.

- Start the server

  ```console
  $ bundle exec rake server:start
  ```
  OR

  ```console
  $ docker compose up web
  ```

- Restart an already running server

  ```console
  $ bundle exec rake server:restart
  ```
  OR
  ```console
  $ docker compose restart web
  ```

- Stop an already running server

  ```console
  $ bundle exec rake server:stop
  ```
  OR
  ```console
  $ docker compose down web
  ```

- Run it tests

  ```console
  $ docker compose up test
  ```
  OR
  ```console
  $ docker compose run --rm test bash
  $ rspec
  ```

## API

### Healthcheck

Endpoint

```text
GET /healthcheck
```

Example of body

```json
{ "status": "ok" }
```


```console
$ curl \
  -X GET \
  -H "Content-Type: application/json" \
  "http://localhost:9292/healthcheck"
```
