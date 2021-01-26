cd ../../var/www/html/

yum install -y docker

systemctl start docker

# docker load -i /path/to/package/acebook-node-docker.tar.gz
docker load -i acebook-node-docker.tar.gz
