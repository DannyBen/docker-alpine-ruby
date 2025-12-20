# Docker Alpine Ruby Image

A pragmatic Alpine-based Ruby image intended as a **general-purpose Ruby workbench**
and a **base image for Ruby projects**.

This image is designed for interactive use and development workflows where
building native gems at runtime is expected. As such, it intentionally includes
common build tools and development libraries, trading image size for convenience
and predictability.

## What this image is

- A Ruby shell environment you can `docker run -it` into
- Suitable as a base image for Ruby CLI tools and libraries
- Capable of building gems with native extensions out of the box
- Built on top of the official `ruby:<major.minor>-alpine` images

## What this image is not

- A minimal production runtime image
- Optimized for smallest possible size
- Intended for hardened server deployments

## Usage

```shell
# Start a shell
docker run -it --rm dannyben/alpine-ruby

# Start IRB
docker run -it --rm dannyben/alpine-ruby irb

# Show the gem environment
docker run --rm dannyben/alpine-ruby gem env
```

## Tags and versions

Images are published for selected Ruby versions, sometimes at the **major.minor**
level (for example `3.4`) and sometimes for specific patch releases (for example
`3.4.8`), depending on when builds are triggered.

Tags do not imply automatic tracking of patch releases.

See the [available tags][3] for the current list.

## Development

Build and test the image locally using Docker Compose:

```bash
docker compose build
docker compose run --rm version
```

The image is built using GitHub Actions. A build is triggered by pushing a Ruby
version tag (for example `3.4` or `3.4.1`), or via manual workflow dispatch.

---

- [View on Docker Hub][1]
- [View on GitHub][2]

[1]: https://hub.docker.com/r/dannyben/alpine-ruby/
[2]: https://github.com/DannyBen/docker-alpine-ruby
[3]: https://hub.docker.com/r/dannyben/alpine-ruby/tags/
