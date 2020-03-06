#!/bin/sh


if [ "$#" -ne 1 ]; then
  echo "Usage: $0 DIRECTORY"
  exit 1
fi

nameOfDir=$1

#read -p "Enter the folder where secrets need to be decrypted: " nameOfDir
#nameOfDir=${nameOfDir:-task2-docker-compose}

echo "Directory being decrypted $nameOfDir"
# Decrypt the file
mkdir -p ./.secrets 2>/dev/null
# --batch to prevent interactive command --yes to assume "yes" for questions
gpg --quiet --batch --yes --decrypt --passphrase=$GPG_PASSPHRASE \
--output ./.secrets/secrets.json ./secrets.json.gpg
