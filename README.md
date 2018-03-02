# drawio-batch dockerimage

Dockerized [drawio-batch](https://github.com/languitar/drawio-batch) for generating images from draw.io files.

## Build image

```
docker build -t petrjurasek/drawio-batch .
```

## Use image

example of generating image from current directory

```
 docker run -v $(pwd):/code petrjurasek/drawio-batch resources/example.xml resources/example.png
```