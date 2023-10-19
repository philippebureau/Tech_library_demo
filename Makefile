### Generic Variables
SHELL := /bin/zsh

.PHONY: help
help: ## Display help message (*: main entry points / []: part of an entry point)
	@grep -E '^[0-9a-zA-Z_-]+\.*[0-9a-zA-Z_-]+:.*?## .*$$' $(MAKEFILE_LIST) | sort | awk 'BEGIN {FS = ":.*?## "}; {printf "\033[36m%-30s\033[0m %s\n", $$1, $$2}'


################################################################################
# AVD SiteA
################################################################################

.PHONY: build-site-A
build-site-A: ## Run ansible playbook to build EVPN Fabric configuration
	ansible-playbook playbooks/build.yml -i Sites/SiteA/inventory.yml -e "target_hosts=SITE_A" --diff

.PHONY: deploy-site-A
deploy-site-A: ## Run ansible playbook to deploy EVPN Fabric.
	ansible-playbook playbooks/deploy.yml -i Sites/SiteA/inventory.yml -e "target_hosts=SITE_A" --diff

.PHONY: validate-site-A
validate-site-A: ## Run ansible playbook to validate EVPN Fabric.
	ansible-playbook playbooks/fabric-validate-state.yml -i Sites/SiteA/inventory.yml -e "target_hosts=SITE_A" --diff
