#!/bin/bash

python -m venv .venv || (echo "Trying python3 instead" && python3 -m venv .venv)
.venv/bin/python -m pip install -r requirements.txt