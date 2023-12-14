# Rust In Python with Poetry

A demo project showing rust code in a python project with the Poetry package manager, pyO3, and Maturin.

## Requirements

- [Poetry](https://python-poetry.org/docs/#installation)
- [Rust](https://www.rust-lang.org/tools/install)
- make

## Installation

```bash
poetry run make install
```

You will need to run `maturin develop` again if you change the rust code.

## Testing

```bash
poetry run make test
```

## Building

(untested, don't know if this works properly with the project configuration)

```bash
poetry run make build
```

## CI

`.github/workflows/CI.yml` defines a GitHub Actions workflow that runs python and rust tests on push.

## Development Guide

Rust modules are defined in the `src` directory. The `Cargo.toml` file defines the rust project and dependencies.

Python modules are in the `string_sum` directory. The `pyproject.toml` file defines the python project and dependencies.

`string_sum/__init__.py` imports the rust code into the python module.

## Useful Links

- [Maturin/Rust project layout](https://www.maturin.rs/project_layout)
- [Discussion on combining maturing/pyO3/poetry](https://github.com/PyO3/maturin/discussions/1246)
- [Simiar starter project with maturin/PyO3/poetry](https://github.com/kfields/hello-maturin/tree/main)
