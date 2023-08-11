#!/bin/bash

if [ -z "$TCR_LANG" ]; then
  echo "You need to set the language you're using"
  echo "Example: export TCR_LANG=python"
  echo "Example: export TCR_LANG=typescript"
  exit 1
fi

git remote remove origin > /dev/null 2>&1

echo "Setting up $TCR_LANG environment..."

(cd $TCR_LANG && ./setup.sh)