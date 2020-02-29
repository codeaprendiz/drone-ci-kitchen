# drone-ci-kitchen

- Referenced Websites
    - https://docs.drone.io/server/provider/github/
    - https://console.cloud.google.com/
    - https://www.noip.com/
    - https://help.github.com/en/actions/configuring-and-managing-workflows/creating-and-storing-encrypted-secrets
    

- Pre Requisites
    - Instance Ubuntu 18.04 LTS, 1 vCPU, 3.75 GB memory
    - Packages required
        - gpg
        - jq
        - docker
            - You can use my repo https://github.com/codeaprendiz/ansible-kitchen.git for fast installations
    - export the value of $GPG_PASSPHRASE as environment variable for decrypt_secret.sh to work. This has to be the same key
      which was used for encryption the first time to produce secrets.json.gpg file.
        
        
- To start the services
```bash
./run.sh
```
    
    
    

    
    
