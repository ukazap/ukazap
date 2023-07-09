#!/bin/bash

pandoc --template index.template.html --metadata title="Ukaza Perdana" README.md \
  | sed 's/https\:\/\/github\.com\/ukazap\/ukazap\/blob\/main\/resume\.md/\/resume.html/' \
  > index.html

pandoc --template page.template.html --metadata title="Ukaza Perdana / Resume" resume.md \
  > resume.html
