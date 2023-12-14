.PHONY: install test build
.DEFAULT_GOAL := install

install:
	@echo "Installing poetry dependencies..."
	@poetry install
	@echo "Building rust extensions..."
	@maturin develop

test:
	@echo ">>>>Running python tests..."
	@coverage run -m pytest
	@echo ">>>>Running rust tests..."
	@cargo test



build:
	@maturin build --release