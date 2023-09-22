# docker-starter-multi-platform
docker starter for multiple platform

## builder

```bash
docker buildx create --name mybuilder
docker buildx use mybuilder
docker buildx inspect --bootstrap
```

## build multiple platform and push

```bash
docker buildx build --platform linux/amd64,linux/arm64,linux/arm/v7 -t lckof/docker-starter-multi-platform:latest --push .
```

One can't `--load` multi-platform image, see [issue#59](https://github.com/docker/buildx/issues/59).
