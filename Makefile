.PHONY: build run

build:
	sudo docker build --build-arg "HTTP_PROXY=http://localhost:3128" -t scivey/opscache ./opscache

run:
	sudo docker run -d --rm -p 8088:8080 -p 3128:3128 scivey/opscache

push:
	sudo docker push scivey/opscache
