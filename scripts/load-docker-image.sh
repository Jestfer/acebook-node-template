cd ../../var/www/html/

yum install -y docker
systemctl start docker

echo "Is there a tmp folder inside /var/lib/docker/?"
ls /var/lib/docker/tmp/
# Creating dir as specified in https://github.com/moby/moby/issues/19566#issuecomment-307678645
mkdir /var/lib/docker/tmp/

echo "I get to Docker Load"
echo "Let's check what's in here"
ls

# docker load -i /path/to/package/acebook-node-docker.tar.gz
docker load -i acebook-node-docker.tar.gz
