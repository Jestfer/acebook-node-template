cd ../../var/www/html/

yum install -y docker
systemctl start docker

# # https://github.com/moby/moby/issues/19566#issuecomment-307678645
# echo "There is a tmp folder inside /var/lib/docker/"

# # https://stackoverflow.com/a/63378252/8243590
# echo "Could the issue be the file format? Trying with .tar now"

# echo "I get to Docker Load"
# echo "Let's check what's in here"
# ls

# echo "And let's check what's in lib/docker"
# ls -la /var/lib/docker/

# echo "And let's check what's in tmp folder"
# ls -la /var/lib/docker/tmp/

echo "Any Docker images?"
docker images

# docker load -i /path/to/package/acebook-node-docker.tar.gz
# docker load -i acebook-node-docker.tar.gz

# https://codepad.co/snippet/docker-save-load-container-using-tgz-file-tar-gz
# gunzip -c acebook-node-docker.tgz | docker load

# https://gist.github.com/monkeym4ster/492af14ad078d005c8349bf1c97fdac5
docker load -i acebook-node-docker.tgz

echo "Any Docker images now?"
docker images

sudo docker run -dp 80:3000 josuemakers/acebook-node

echo "Deleting old, unused images"
docker image prune