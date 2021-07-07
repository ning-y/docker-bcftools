# docker-bcftools

GitHub repository for the [ningyuan/bcftools]() Docker Hub repository.
These images provide development builds for bcftools.
Unless you need those "bleeding-edge" features, you probably want to use [biocontainers/bcftools](https://hub.docker.com/r/biocontainers/bcftools) instead.

## Building

A reminder to myself:

```bash
$ docker build -t ningyuan/bcftools:186dc93 --build-arg bcftools_commit=186dc93 .
$ docker push ningyuan/bcftools:186dc93
```

But of course, replace `186dc93` with the desired target commit.
