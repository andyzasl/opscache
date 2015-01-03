.PHONY: build run

build:
	sudo docker build -t scivey/opscache ./opscache

run:
	sudo docker run --rm -p 8088:8080 -p 3128:3128 scivey/opscache

push:
	sudo docker push scivey/opscache
