# drawio-batch dockerimage

Dockerized [drawio-batch](https://github.com/languitar/drawio-batch) for generating images from draw.io files.

## Build image

```
docker build -t qvak/draw-io-cli .
```

## Use image

example of generating image

```
 docker run -v $(pwd):/code qvak/draw-io-cli drawio-batch -j /usr/bin/phantomjs -f png -q 100 resources/example.xml resources/example.png
```