#!/bin/bash

sed -e '/{{content}}/ {' -e 'r README.md' -e 'd' -e '}' index.template.html > index.html