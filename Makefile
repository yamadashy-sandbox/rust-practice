PHONY: help
help:
	@grep -E '^[a-zA-Z_-]+:.*?## .*$$' $(MAKEFILE_LIST) | sort | awk 'BEGIN {FS = ":.*?## "}; {printf "\033[36m%-15s\033[0m %s\n", $$1, $$2}'

## Set default command of make to help, so that running make will output help texts
.DEFAULT_GOAL := help

# ==================================================
# Compile
# ==================================================
.PHONY: compile
compile: ## compile
	rustc main.rs --out-dir ./bin

.PHONY: compile_run
compile_run: ## compile
	rustc main.rs --out-dir ./bin
	./bin/main
