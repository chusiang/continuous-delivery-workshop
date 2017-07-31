main: build

build:
	dpkg -b penguin-htdocs

clean:
	-rm penguin-htdocs.deb
