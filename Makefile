.PHONY: install test build dev develop ci-install poetry-install poetry-no-jupyter
.DEFAULT_GOAL := install

install: poetry-install develop 

ci-install: poetry-no-jupyter develop

test:
	@echo ">>>>Running python tests..."
	@coverage run -m pytest
	@echo ">>>>Running rust tests..."
	@cargo test

build: install
	@maturin build --release

develop:
	@echo "Building rust extensions in develop mode..."
	@maturin develop

dev: develop

poetry-install:
	@echo "Installing poetry dependencies..."
	@poetry install --sync

poetry-no-jupyter:
	@echo "Installing poetry dependencies without jupyter..."
	@poetry install --without jupyter --sync
