.PHONY: main syntax_check lint_check boot run clean

main: syntax_check lint_check

init:
	if [ ! -d "/ansible-retry" ]; then mkdir "/ansible-retry"; fi

syntax_check:
	ansible-playbook --syntax-check \
		deploy.yml \
		example.yml \
		provision.yml \
		push_ssh_pub_key.yml \
		setup.yml \
		test.yml

lint_check:
	ansible-lint \
		deploy.yml \
		example.yml \
		provision.yml \
		push_ssh_pub_key.yml \
		setup.yml \
		test.yml

boot:
	vagrant up

run:
	vagrant provision

clean:
	rm -f setup.retry /ansible-retry
	vagrant destroy -f

