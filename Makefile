.PHONY: main init build run status clean

main: build

init:
	docker-compose pull

build:
	# Use Ubunu container to build the deb file.
	docker-compose up build_deb

run:
	# Create / Run the web servers for Continuous Delivery Lab.
	docker-compose up -d web_stg web_prd

status:
	docker-compose ps

clean:
	-rm penguin-htdocs.deb
	docker-compose stop
	docker-compose rm -f build_deb web_stg web_prd

