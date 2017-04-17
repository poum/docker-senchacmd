# Sencha cmd image

This is a tool image for the Sencha cmd, based on official openjdk:7 image.
`compass` is also included as part of sencha build process.

See https://www.sencha.com/products/sencha-cmd/

# Docker hub

See https://hub.docker.com/r/poum/senchacmd/.

# Usage

  docker run --rm -v $(pwd):/code --workdir /code poum/senchacmd app build
