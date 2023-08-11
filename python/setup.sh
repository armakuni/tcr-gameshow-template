#!/bin/bash

python -m venv .venv || python3 -m venv .venv
.venv/bin/python -m pip install -r requirements.txt