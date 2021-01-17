# docker-test

Learn and test docker concepts.

## Terminology

- **layer**: instruction in the image's Dockerfile
- **image**: built-up from a series of layers
- **container**: instance of an **image**
- [Images and layers](https://docs.docker.com/storage/storagedriver/#images-and-layers)
- starting an image results in a running container (as many as you want, for the same image)
- **Dockerfile** contains instructions needed to build the image
  - it is then processed by the Docker builder which generates the Docker image
- [`RUN` vs `CMD` vs `ENTRYPOINT`](https://goinbigdata.com/docker-run-vs-cmd-vs-entrypoint/)

## Commands

### Containers

```bash
# list all containers, including those not running
docker ps -a

# stop container
docker stop <id>

# remove container
docker rm <id>

# remove all containers
docker ps -a -q | xargs docker rm
```

### Images

```bash
# list all images
docker images

# delete image
docker rmi <id>

# remove dangling images
docker rmi $(docker images -f "dangling=true" -q)
```

```bash
# run container, mount current working directory, get interactive shell
docker run -it -v ${PWD}:/src <image> /bin/bash
```

### Miscellaneous

```bash
# clean-up /var/lib/docker/overlay
docker system prune -a -f
```
