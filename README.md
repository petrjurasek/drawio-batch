# drawio-batch dockerimage

Dockerized [drawio-batch](https://github.com/languitar/drawio-batch) for generating images from draw.io files.

## Build image

```
docker build -t petrjurasek/drawio-batch .
```

## Use image

example of generating image from current directory

```
 docker run -it --rm --mount type=bind,source="$(pwd)",target=/code petrjurasek/drawio-batch -q 100 -f png resources/example.xml resources/example.png
```

making the alias in your ```rc``` file makes the usage even easier

```
alias drawio-batch='docker run -it --rm --mount type=bind,source="$(pwd)",target=/code petrjurasek/drawio-batch'
```

and then running

```
drawio-batch  -q 100 -f png resources/example.xml resources/example.png
```
