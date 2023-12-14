.PHONY: install test build
.DEFAULT_GOAL := install

install:
	@echo "Installing poetry dependencies..."
	@poetry install
	@echo "Building rust extensions..."
	@poetry run maturin develop
	@echo "Activating poetry virtualenv..."
	@poetry shell

test:
	@echo ">>>>Running python tests..."
	@poetry run pytest
	@echo ">>>>Running rust tests..."
	@cargo test

build:
	poetry run maturin build --release