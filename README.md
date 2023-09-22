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

One can only `--load` single platform image, see [issue#59](https://github.com/docker/buildx/issues/59#issuecomment-667548900).

test with:
```bash
docker buildx build --platform linux/amd64 -t docker-starter-multi-platform --load .
docker run --rm docker-starter-multi-platform
```

## use platform ARGs in buildx

see [automic platform ARGs in the global scope](https://docs.docker.com/engine/reference/builder/#automatic-platform-args-in-the-global-scope).
