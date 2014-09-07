docker-registry-ui
==================

A simple web UI for browsing private docker registries

## Usage

Install a private docker registry and ```python run.py``` on the same server.

Browse to ```http://localhost:8080``` to begin using.

## Usage with docker
First to build the image, clone this repository and from inside the checkout :
```
docker build -t docker-registry-ui .
```


Once build is done you can run the container :
```
docker run -p 8080:8080 -e REGURL="<registryIP/host>[:port]" docker-registry-ui
```

`REGURL` default to "localhost"

If your registry does not expose its port (for any reason you might have), you can still do :
```
docker run -p 8080:8080 --link myregistrycontainer:registry -e REGURL="registry:5000" docker-registry-ui
```
