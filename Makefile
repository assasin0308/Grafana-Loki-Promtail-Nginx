init: docker-down docker-build docker-up

down: docker-down
down-clear: docker-down-clear

# docker run
docker-up:
	docker compose up -d

# docker down, remove old containers
docker-down:
	docker compose down --remove-orphans

# docker down, remove old containers, remove volumes
docker-down-clear:
	docker compose down -v --remove-orphans

# build docker images
docker-build:
	docker compose build

# force re-build docker images
docker-build-force:
	docker compose build --no-cache
