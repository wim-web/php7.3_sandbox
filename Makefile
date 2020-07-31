dump:
	docker run -it --rm -v $$(pwd):/src -w /src learning_workspace:latest composer dump-autoload

install:
	docker run -it --rm -v $$(pwd):/src -w /src learning_workspace:latest composer install

test:
	docker run -it --rm -v $$(pwd):/src -w /src learning_workspace:latest ./vendor/bin/phpunit tests/

test-p:
	docker run -it --rm -v $$(pwd):/src -w /src learning_workspace:latest ./vendor/bin/phpunit ${path}