.PHONY: install test build dev develop ci-install
.DEFAULT_GOAL := install

install:
	@echo "Installing poetry dependencies..."
	@poetry install
	@echo "Building rust extensions..."
	@maturin develop

ci-install:
	@echo "Installing poetry dependencies..."
	@poetry install --without jupyter --sync
	@echo "Building rust extensions..."
	@maturin develop

test:
	@echo ">>>>Running python tests..."
	@coverage run -m pytest
	@echo ">>>>Running rust tests..."
	@cargo test

build:
	@maturin build --release

dev: develop

develop:
	@maturin develop