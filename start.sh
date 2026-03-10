#!/usr/bin/env bash

[ -d .venv ] || python3 -m venv .venv

source .venv/bin/activate

pip show mkdocs-material &>/dev/null || pip install mkdocs-material

mkdocs serve --dev-addr 10.10.10.10:11600
