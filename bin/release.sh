set -ex
# SET THE FOLLOWING VARIABLES

# docker hub username
USERNAME=thinkcompany

# image name
IMAGE=docker-node-chrome

# version number (passed as the first argument to this script)
VERSION=$1

# tag it
git pull
git tag -a "$VERSION" -m "version $VERSION"
docker tag $USERNAME/$IMAGE:latest $USERNAME/$IMAGE:$VERSION

# push it
git push --tags
docker push $USERNAME/$IMAGE:latest
docker push $USERNAME/$IMAGE:$VERSION
