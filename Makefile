# A wonderfull Makefile

PROJECT := blueprint

# color !
red = /bin/echo -e "\x1b[31m\#\# $1\x1b[0m"
green = /bin/echo -e "\x1b[32m\#\# $1\x1b[0m"
yellow = /bin/echo -e "\x1b[33m\#\# $1\x1b[0m"
blue = /bin/echo -e "\x1b[34m\#\# $1\x1b[0m"
purple = /bin/echo -e "\x1b[35m\#\# $1\x1b[0m"
cyan = /bin/echo -e "\x1b[36m\#\# $1\x1b[0m"
white = /bin/echo -e "\x1b[37m\#\# $1\x1b[0m"

colors:

	@$(call red, "red")
	@$(call green, "green")
	@$(call yellow, "yellow")
	@$(call blue, "blue")
	@$(call purple, "purple")
	@$(call cyan, "cyan")
	@$(call white, "white")


venv:  ## create the virtualenv
	@echo "Creating venv into ~/.virtualenvs/${PROJECT}"
	@python3 -m venv ~/.virtualenvs/${PROJECT}
	@echo "Done -- now please workon ${PROJECT}"

install:
	@echo "install stuff"
	@pip3 install -e ."[dev]"

docker:
	@echo "Creating docker image"
	@docker build -f dev.Dockerfile .
	@echo "docker image built"

lint:
	@echo "Linting - pylint"
	@echo "Linting - flake8"
	@flake8
	@echo "Linting - bandit"
	@bandit src/blueprint

test:
	@py.test
