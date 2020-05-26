PHONY: help
help:
	@grep -E '^[a-zA-Z_-]+:.*?## .*$$' $(MAKEFILE_LIST) | sort | awk 'BEGIN {FS = ":.*?## "}; {printf "\033[36m%-15s\033[0m %s\n", $$1, $$2}'

## Set default command of make to help, so that running make will output help texts
.DEFAULT_GOAL := help

# ==================================================
# Build
# ==================================================
.PHONY: build
build: ## build
	cargo build

.PHONY: run
run: ## run
	cargo run

.PHONY: release
release: ## release
	cargo build --release
