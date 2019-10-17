# Usage

## Build the image
- docker build -t ```imageName``` .

## start the container and mount the folder where your codebase is
- docker run -it --name ```containerName``` --network host --volume ```locationToYourFiles```:```mountLocationInContainer``` ```imageName```
