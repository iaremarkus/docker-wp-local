.PHONY: official bedrock up down

COLOR_RESET   = \033[0m
COLOR_INFO    = \033[33m

official:
	@echo "${COLOR_INFO}Downloading WordPress:${COLOR_RESET}"
	wget https://wordpress.org/latest.tar.gz
	@echo "${COLOR_INFO}Unzipping:${COLOR_RESET}"
	tar xfz latest.tar.gz
	@echo "${COLOR_INFO}Cleaning up:${COLOR_RESET}"
	rm latest.tar.gz

bedrock:
	composer create-project roots/bedrock wordpress

up:
	@echo "${COLOR_INFO}Starting Docker:${COLOR_RESET}"
	docker-compose up --build -d

down:
	@echo "${COLOR_INFO}Stopping Docker:${COLOR_RESET}"
	docker-compose down