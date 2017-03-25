Alpine Ruby Docker
==================================================


This is the smallest possible Ruby docker image, with ability to 
build native extension gems.

```
# Start IRB
$ docker run -it --rm dannyben/alpine-ruby

# Show gem environment
$ docker run --rm dannyben/alpine-ruby gem env
```

[View on Docker Hub][1]

[1]: https://hub.docker.com/r/dannyben/alpine-ruby/