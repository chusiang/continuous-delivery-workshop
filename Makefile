main: build

init:
	apt-get update
	apt-get install -y make

build:
	chmod 755 penguin-htdocs/DEBIAN
	dpkg -b penguin-htdocs

clean:
	-rm penguin-htdocs.deb
