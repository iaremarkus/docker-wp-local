.DEFAULT_GOAL := it
.PHONY: setup up down it

COLOR_RESET   = \033[0m
COLOR_INFO    = \033[33m

it: setup up

setup:
	@echo "${COLOR_INFO}Downloading WordPress:${COLOR_RESET}"
	wget https://wordpress.org/latest.tar.gz
	@echo "${COLOR_INFO}Unzipping:${COLOR_RESET}"
	tar xfz latest.tar.gz
	@echo "${COLOR_INFO}Cleaning up:${COLOR_RESET}"
	rm latest.tar.gz

up:
	@echo "${COLOR_INFO}Starting Docker:${COLOR_RESET}"
	docker-compose up --build -d

down:
	@echo "${COLOR_INFO}Stopping Docker:${COLOR_RESET}"
	docker-compose down