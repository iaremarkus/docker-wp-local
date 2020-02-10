.DEFAULT_GOAL := it
.PHONY: download_wordpress run_docker stop_docker it

COLOR_RESET   = \033[0m
COLOR_INFO    = \033[32m
COLOR_COMMENT = \033[33m

it: download_wordpress run_docker

download_wordpress:
	@echo "\n${COLOR_INFO}Downloading WordPress:${COLOR_RESET}\n"
	wget https://wordpress.org/latest.tar.gz
	@echo "\n${COLOR_INFO}Unzipping:${COLOR_RESET}\n"
	tar xfz latest.tar.gz
	@echo "\n${COLOR_INFO}Cleaning up:${COLOR_RESET}\n"
	rm latest.tar.gz

run_docker:
	@echo "\n${COLOR_INFO}Starting Docker:${COLOR_RESET}\n"
	docker-compose up --build -d

stop_docker:
	@echo "\n${COLOR_INFO}Stopping Docker:${COLOR_RESET}\n"
	docker-compose down