cd ../../var/www/html/

yum install -y docker
systemctl start docker

# https://github.com/moby/moby/issues/19566#issuecomment-307678645
echo "There is a tmp folder inside /var/lib/docker/?"

# https://stackoverflow.com/a/63378252/8243590
echo "Could the issue be the file format? Trying with .tar now"

echo "I get to Docker Load"
echo "Let's check what's in here"
ls

# docker load -i /path/to/package/acebook-node-docker.tar.gz
docker load -i acebook-node-docker.tar.gz
