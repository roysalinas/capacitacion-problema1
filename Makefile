include ./makefiletask.mk
.DEFAULT_GOAL := help
.PHONY : resources

APPDIR= /app
WORKDIR = /app
IMAGE = node:10.10.0-slim



install: ## Make install
	docker run -it --rm -v $$PWD:$(APPDIR) -w $(WORKDIR) $(IMAGE) npm install

start:	## Make start
	docker run -p 1042:3030 -p 35729:35729 --rm -v $$PWD:$(APPDIR) -w $(WORKDIR) $(IMAGE) npm start

release: ## build project
	docker run -p 1042:3030 -p 35729:35729 -v $$PWD:$(APPDIR) -w $(WORKDIR)  $(IMAGE) npm run release

greet: ## Ejecuta saludo
	docker run -e VAR="TATAJE" -it -v $$PWD:$(APPDIR) -w $(WORKDIR) $(IMAGE) sh resources/example.sh

resources: ## saludando por bash
	@echo 'Hola recursos!'


help:
	@grep -E '^[a-zA-Z_-]+:.*?## .*$$' $(MAKEFILE_LIST) | sort | awk 'BEGIN {FS = ":.*?## "}; {printf "\033[36m%-16s\033[0m %s\n", $$1, $$2}'