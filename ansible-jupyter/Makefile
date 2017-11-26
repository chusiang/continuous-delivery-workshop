.PHONY: main init run status clean

main: run

run:
	docker-compose up -d control_machine
	docker-compose up -d managed_node

scale:
	docker-compose scale control_machine=31
	docker-compose scale managed_node=62

status:
	docker-compose ps

clean:
	docker-compose stop
	docker-compose rm -f control_machine managed_node
