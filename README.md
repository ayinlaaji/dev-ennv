# About

This is a docker container to setup development environment containing the following
- vim (neovim)
- bazel
- nodejs
- python
- yarn
- git
- golang
- protobuf
- typescript
- prettier

and some of the vim snippet and vim configurations

# Usage

## Build the image
- docker build -t ```imageName``` .

## start the container and mount the folder where your codebase is
- docker run -it --name ```containerName``` --network host --volume ```locationToYourFiles```:```mountLocationInContainer``` ```imageName```
