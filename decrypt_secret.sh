#!/bin/sh

# Decrypt the file
mkdir ./.secrets 2>/dev/null
# --batch to prevent interactive command --yes to assume "yes" for questions
gpg --quiet --batch --yes --decrypt --passphrase=$GPG_PASSPHRASE \
--output ./.secrets/secrets.json secrets.json.gpg
