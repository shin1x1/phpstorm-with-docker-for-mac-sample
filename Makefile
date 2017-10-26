all: install up
.PHONY: all

up:
	docker-compose up -d
.PHONY: up

install:
	docker-compose run composer install
	cp -a .env.example .env
	docker-compose run php-cli php artisan key:generate
.PHONY: install

clean:
	docker-compose down
.PHONY: clean
