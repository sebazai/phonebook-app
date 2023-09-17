# Phonebook app

App for managing your contacts. Tested with MACBook pro M1, aarch.

Persists your contacts if you decide to close the environment.

## Requirements

- Docker (tested with v20.10.16)
- Docker-compose (tested with v2.6.0)

## Starting service

Clone repository.  
Navigate to root.  
Run `cp env-example .env`  
Run `docker-compose up --build`

### First time setup

In the root of repo, run following commands

Run `docker-compose run phonebook rake db:setup`
