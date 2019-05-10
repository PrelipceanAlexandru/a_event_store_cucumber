# README

# Project

[Rails Event Store and Cucumber Tests](https://assist-software.net/snippets/how-integrate-cucumber-tests-rails-event-store)


## Install

### Clone the repository

```shell
git clone https://github.com/PrelipceanAlexandru/event_store_and_cucumber_tests.git
cd path_to_project
```

### Check your Ruby version

```shell
ruby -v
```

The ouput should start with something like `ruby 2.5.3`

### Install dependencies

Using [Bundler](https://github.com/bundler/bundler)

```shell
bundle
```

### Configure the database

Create a `local_env.yml` file under `config` folder and add:

```shell
USERNAME: YOUR_USERNAME
PASSWORD: YOUR_PASSWORD
DATABASE: YOUR_DEV_DATABASE

TEST_DATABASE: YOUR_TEST_DATABASE
PROD_DATABASE: YOUR_PROD_DATABASE
```

### Initialize the database

```shell
rails db:create db:migrate
```

## Run cucumber tests

```shell
cucumber
```
