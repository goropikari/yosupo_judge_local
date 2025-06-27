.PHONY: update-lang
update-lang:
	docker/langs/build.sh
	docker compose build api judger

.PHONY: start
start:
	./start.sh

.PHONY: down
down:
	docker compose down

.PHONY: docker
docker:
	bash -c 'cd library-checker-judge && ./run_protoc.sh'
	docker compose build --no-cache
