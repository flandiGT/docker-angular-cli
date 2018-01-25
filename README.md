# docker/angular-cli

```
_                      _                 ____ _     ___
/ \   _ __   __ _ _   _| | __ _ _ __     / ___| |   |_ _|
/ △ \ | '_ \ / _` | | | | |/ _` | '__|   | |   | |    | |
/ ___ \| | | | (_| | |_| | | (_| | |      | |___| |___ | |
/_/   \_\_| |_|\__, |\__,_|_|\__,_|_|       \____|_____|___|
|___/

Angular CLI: 1.6.5
Node: 8.9.4
npm: 5.6.0
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
docker run --rm -v `pwd`:/opt/src local/angular-cli:latest ng build
```

## License

MIT
