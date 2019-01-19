# dockerç”¨ Makefile

all: rm build up ps

build:
	docker-compose build

up:
	docker-compose up

upd:
	docker-compose up -d

upb:
	docker-compose up -d --build

x:
	docker-compose exec ubuntu bash

ps:
	docker ps -a && echo "\n"
	docker-compose ps

rm:
	docker-compose stop
	docker-compose rm -f