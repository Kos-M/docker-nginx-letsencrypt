## Create ssl local 

Enabling SSL in our Nginx configuration will involve adding an HTTP redirect to HTTPS and specifying our SSL certificate and key locations. It will also involve specifying our Diffie-Hellman group, which we will use for Perfect Forward Secrecy.

```bash
mkdir dhparam
openssl dhparam -out $(pwd)/dhparam/dhparam-2048.pem 2048

```

## Ssl update (LetsEncrypt) 

Use regenerateSSL.sh script with system native cron system to renew certificates.( You have to update path,email,domain there)

## Changes to work for your domain,  search and replace on all files
-  example.com -> your-domain.com
- /path/to/this/project/dir -> < absolute  cloned dir of this project >
- <your-emmail-here -> an actual email , which bind it with your domain by letsencrypt


### This project is followed by tutorial from digitalOcean
You can find it  [here](https://www.digitalocean.com/community/tutorials/how-to-secure-a-containerized-node-js-application-with-nginx-let-s-encrypt-and-docker-compose#step-6-renewing-certificates)