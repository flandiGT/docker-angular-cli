# docker/angular-cli

```
_                      _                 ____ _     ___
/ \   _ __   __ _ _   _| | __ _ _ __     / ___| |   |_ _|
/ △ \ | '_ \ / _` | | | | |/ _` | '__|   | |   | |    | |
/ ___ \| | | | (_| | |_| | | (_| | |      | |___| |___ | |
/_/   \_\_| |_|\__, |\__,_|_|\__,_|_|       \____|_____|___|
|___/

Angular CLI: 1.6.1
Node: 9.3.0
npm: 5.5.1
OS: linux x64 (alpine)
```

## Description

This docker-image contains the anglular-cli tool based on the node-alpine image and can be used to build your angular projects.

## Usage

```
docker run adorsys/angular-cli:latest <your ng command>
```

### Usage example

```
docker run --rm -v `pwd`:/home/node/src local/angular-cli:latest ng build
```

## License

MIT
