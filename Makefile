# https://gist.github.com/hayajo/cde4803cc5199f69668f821511d15b69
.PHONY: help
help: ## show help
	@echo "Usage:"
	@awk -F':.*##' '/^[-_a-zA-Z0-9]+:.*##/{printf"%-12s\t%s\n",$$1,$$2}' $(MAKEFILE_LIST) | sort
	@echo ""

.PHONY: build
build: ## build manifests
	kustomize build manifests -o dist/dist.yaml

.PHONY: apply
apply: build ## apply manifests
	kubectl apply -f dist
