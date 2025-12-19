# Docker Alpine Ruby Image

A minimal Ruby Docker image designed to support building gems with native extensions, while keeping the image size as small as possible.

The image is published in multiple Alpine and Ruby versions. See the
[available tags][3] for details.

```shell
# Start a shell
docker run -it --rm dannyben/alpine-ruby

# Start IRB
docker run -it --rm dannyben/alpine-ruby irb

# Show the gem environment
docker run --rm dannyben/alpine-ruby gem env
```

## Development

Use Docker Compose to build and test the image locally:

```bash
$ docker compose build
$ docker compose run --rm version
```

The image is built using GitHub Actions. A build is triggered by pushing a Ruby
version tag in the form `3.1.0` (without a `v` prefix), or via manual workflow
dispatch.

---

- [View on Docker Hub][1]
- [View on GitHub][2]

[1]: https://hub.docker.com/r/dannyben/alpine-ruby/
[2]: https://github.com/DannyBen/docker-alpine-ruby
[3]: https://hub.docker.com/r/dannyben/alpine-ruby/tags/
