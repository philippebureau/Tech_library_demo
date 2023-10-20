### Generic Variables
SHELL := /bin/zsh

.PHONY: help
help: ## Display help message (*: main entry points / []: part of an entry point)
	@grep -E '^[0-9a-zA-Z_-]+\.*[0-9a-zA-Z_-]+:.*?## .*$$' $(MAKEFILE_LIST) | sort | awk 'BEGIN {FS = ":.*?## "}; {printf "\033[36m%-30s\033[0m %s\n", $$1, $$2}'


################################################################################
# IP TRANSPORT
################################################################################

.PHONY: build-transport
build-transport: ## Run ansible playbook to build EVPN Fabric configuration
	ansible-playbook Topology/evpnvxlan/playbooks/build.yml -i Topology/evpnvxlan/Sites/IP_Transport/inventory.yml -e "target_hosts=EVPN_VXLAN" --diff

.PHONY: deploy-transport
deploy-transport: ## Run ansible playbook to deploy EVPN Fabric.
	ansible-playbook Topology/evpnvxlan/playbooks/deploy.yml -i Topology/evpnvxlan/Sites/IP_Transport/inventory.yml -e "target_hosts=EVPN_VXLAN" --diff

.PHONY: validate-transport
validate-transport: ## Run ansible playbook to validate EVPN Fabric.
	ansible-playbook playbooks/fabric-validate-state.yml -i Topology/evpnvxlan/Sites/IP_Transport/inventory.yml -e "target_hosts=EVPN_VXLAN" --diff

################################################################################
# SiteA
################################################################################

.PHONY: build-site-A
build-site-A: ## Run ansible playbook to build EVPN Fabric configuration
	ansible-playbook Topology/evpnvxlan/playbooks/build.yml -i Topology/evpnvxlan/Sites/SiteA/inventory.yml -e "target_hosts=SITE_A" --diff

.PHONY: deploy-site-A
deploy-site-A: ## Run ansible playbook to deploy EVPN Fabric.
	ansible-playbook Topology/evpnvxlan/playbooks/deploy.yml -i Topology/evpnvxlan/Sites/SiteA/inventory.yml -e "target_hosts=SITE_A" --diff

.PHONY: validate-site-A
validate-site-A: ## Run ansible playbook to validate EVPN Fabric.
	ansible-playbook playbooks/fabric-validate-state.yml -i Sites/SiteA/inventory.yml -e "target_hosts=SITE_A" --diff

################################################################################
# AVD SiteB
################################################################################

.PHONY: build-site-B
build-site-A: ## Run ansible playbook to build EVPN Fabric configuration
	ansible-playbook Topology/evpnvxlan/playbooks/build.yml -i Topology/evpnvxlan/Sites/SiteB/inventory.yml -e "target_hosts=SITE_B" --diff

.PHONY: deploy-site-B
deploy-site-A: ## Run ansible playbook to deploy EVPN Fabric.
	ansible-playbook Topology/evpnvxlan/playbooks/deploy.yml -i Topology/evpnvxlan/Sites/SiteB/inventory.yml -e "target_hosts=SITE_B" --diff

.PHONY: validate-site-B
validate-site-A: ## Run ansible playbook to validate EVPN Fabric.
	ansible-playbook playbooks/fabric-validate-state.yml -i Sites/SiteB/inventory.yml -e "target_hosts=SITE_B" --diff

################################################################################
# AVD SiteC
################################################################################

.PHONY: build-site-C
build-site-A: ## Run ansible playbook to build EVPN Fabric configuration
	ansible-playbook Topology/evpnvxlan/playbooks/build.yml -i Topology/evpnvxlan/Sites/SiteC/inventory.yml -e "target_hosts=SITE_C" --diff

.PHONY: deploy-site-C
deploy-site-A: ## Run ansible playbook to deploy EVPN Fabric.
	ansible-playbook Topology/evpnvxlan/playbooks/deploy.yml -i Topology/evpnvxlan/Sites/SiteC/inventory.yml -e "target_hosts=SITE_C" --diff

.PHONY: validate-site-C
validate-site-A: ## Run ansible playbook to validate EVPN Fabric.
	ansible-playbook playbooks/fabric-validate-state.yml -i Sites/SiteC/inventory.yml -e "target_hosts=SITE_C" --diff
