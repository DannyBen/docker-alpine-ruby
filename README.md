# Docker Alpine Ruby Image

This is the smallest possible Ruby docker image, with ability to 
build native extension gems.

This image is available in several alpine and ruby versions. See 
[available tags][3].

```shell
# Start bash
$ docker run -it --rm dannyben/alpine-ruby

# Start IRB
$ docker run -it --rm dannyben/alpine-ruby irb

# Show gem environment
$ docker run --rm dannyben/alpine-ruby gem env
```

---

- [View on Docker Hub][1]
- [View on GitHub][2]

[1]: https://hub.docker.com/r/dannyben/alpine-ruby/
[2]: https://github.com/DannyBen/docker-alpine-ruby
[3]: https://hub.docker.com/r/dannyben/alpine-ruby/tags/