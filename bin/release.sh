set -ex
# SET THE FOLLOWING VARIABLES

# docker hub username
USERNAME=thinkcompany

# image name
IMAGE=docker-node-chrome

VERSION=$1

# ensure we're up to date
git pull

# tag it
docker tag $USERNAME/$IMAGE:latest $USERNAME/$IMAGE:$VERSION

# push it
docker push $USERNAME/$IMAGE:latest
docker push $USERNAME/$IMAGE:$VERSION
