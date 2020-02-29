# drone-ci-kitchen

- Referenced Websites
    - https://eriksamuelsson.com/how-to-install-and-configure-drone-ci-on-a-self-hosted-server/
    - https://www.digitalocean.com/community/tutorials/how-to-install-docker-compose-on-ubuntu-18-04
    

- Pre Requisites
    - Instance Ubuntu 18.04 LTS, 1 vCPU, 3.75 GB memory
    - Packages required
        - gpg
        - jq
        - docker-compose
            - ```bash
              $ sudo curl -L https://github.com/docker/compose/releases/download/1.21.2/docker-compose-`uname -s`-`uname -m` -o /usr/local/bin/docker-compose
              $ sudo chmod +x /usr/local/bin/docker-compose
              $ docker-compose --version  
              ```    
        - docker
            - You can use my repo https://github.com/codeaprendiz/ansible-kitchen.git for fast installations
    - export the value of $GPG_PASSPHRASE as environment variable for decrypt_secret.sh to work. This has to be the same key
      which was used for encryption the first time to produce secrets.json.gpg file.
        
        
- To start the services
```bash
./run.sh
```
    
    
    

    
    
