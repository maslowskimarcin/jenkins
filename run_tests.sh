#!/bin/bash

if python3 -c "import pytest"
then
   echo "Nothing to install"
else
    pip3 install --upgrade --user pytest
fi
python3 -m pytest --junitxml results.xml tests.py
