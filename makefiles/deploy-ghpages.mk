.PHONY: deploy.ghpages
DEPLOY_DIR = deploy
BUILD_DIR = build
GIT_BRANCH = gh-pages
GIT_PERSONAL_TOKEN = --TOKEN---
GIT_BRANCH_DIR = $(PWD)/$(DEPLOY_DIR)/$(GIT_BRANCH)

deploy.ghpages:
	@echo 'Deploy to gh-pages...'