cd ../../var/www/html/

sudo yum install -y docker
sudo systemctl start docker

# https://github.com/moby/moby/issues/19566#issuecomment-307678645
echo "There is a tmp folder inside /var/lib/docker/?"

# https://stackoverflow.com/a/63378252/8243590
echo "Could the issue be the file format? Trying with .tar now"

echo "I get to Docker Load"
echo "Let's check what's in here"
ls

# docker load -i /path/to/package/acebook-node-docker.tar.gz
# docker load -i acebook-node-docker.tar.gz

# https://codepad.co/snippet/docker-save-load-container-using-tgz-file-tar-gz
# gunzip -c acebook-node-docker.tgz | docker load

# https://gist.github.com/monkeym4ster/492af14ad078d005c8349bf1c97fdac5
sudo docker load -i acebook-node-docker.tgz
