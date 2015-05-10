TARGET = /home/m/share/htdocs/matome
CURRENT = $(shell pwd)

composer:
	@composer update

install:
	@sudo rm -rf /var/www/html_back/*
	@sudo mv -f /var/www/html /var/www/html_back
	@sudo cp -r ./src /var/www/html

link_install:
	@sudo ln -snf $(CURRENT)/src/* $(TARGET)
