#!/bin/bash

if python3 -c "import pytest"
then
   echo "Nothing to install"
else
    pip3 install --upgrade --user pytest
fi
python3 -m pytest --junitxml results.xml tests.py

OUTPUT="$(python3 read_xml.py 2>&1 > /dev/null)"

if [ $OUTPUT -gt 1 ]
then
    exit $OUTPUT
else
    exit 0
fi