.PHONY: update-lang
update-lang:
	docker/langs/build.sh
	docker compose build api judger
