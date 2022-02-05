composer:
	docker-compose run composer composer $(filter-out $@, $(MAKECMDGOALS))