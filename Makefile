run: docker.run

docker.run:
	docker-compose up --build

docker.build.dev:
	docker build -f Dockerfile.dev -t mim/mim_services:latest .

db.setup:
	docker-compose run web bundle exec rails db:setup

db.create:
	docker-compose run web bundle exec rails db:create

db.migrate:
	docker-compose run web bundle exec rails db:migrate