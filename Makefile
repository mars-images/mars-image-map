run: docker.run app.run

docker.run:
	docker-compose up --detach

app.run:
	foreman start -f Procfile.dev