main: build

build:
	chmod 755 penguin-htdocs/DEBIAN
	dpkg -b penguin-htdocs

clean:
	-rm penguin-htdocs.deb
