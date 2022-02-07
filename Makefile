all: build run

build:
	docker build -f Dockerfile -t cv-prod-tips .

run:
	docker run -d -v $(shell pwd):/root/shared -p 8888:8888 cv-prod-tips
