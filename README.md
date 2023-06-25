# LibreOffice-API-Dev Docker Image

This Version is 7.5 of LibreOffice.

This version contains all LibreOffice apps and some extra packages for development.

On DockerHub: [dockdock/libreoffice-api-dev](https://hub.docker.com/r/dockdock/libreoffice-api-dev)


### Timezone

We add "UTC" timezone

### Base user

We use same user in all our applications

| key      | value     |
|----------|-----------|
| username | dockdock  |
| uid      | 1000      |
| gid      | 1000      |

## Ports

This version of LibreOffice API expose the port 2002

## Tags

- LO-7.5

## Build

```bash
docker build -t dockdock/libreoffice-api-full:LO-7.5 .
```


## See also

- [LibreOffice-API Docker Image](https://github.com/Amourspirit/docker-libreoffice-api-full/tree/main) on GitHub
- [dockdock/libreoffice-api-dev](https://hub.docker.com/r/dockdock/libreoffice-api-dev) on DockerHub
