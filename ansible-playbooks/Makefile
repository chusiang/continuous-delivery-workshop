.PHONY: main boot run clean

main: run

init:
	if [ ! -d "/ansible-retry" ]; then mkdir "/ansible-retry"; fi

boot:
	vagrant up

run:
	vagrant provision

clean:
	rm -f setup.retry /ansible-retry
	vagrant destroy -f

