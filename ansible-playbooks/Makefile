.PHONY: main boot run clean

main: syntax_check

init:
	if [ ! -d "/ansible-retry" ]; then mkdir "/ansible-retry"; fi

syntax_check:
	ansible-playbook --syntax-check \
		setup.yml

boot:
	vagrant up

run:
	vagrant provision

clean:
	rm -f setup.retry /ansible-retry
	vagrant destroy -f

