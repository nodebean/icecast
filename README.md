# Icecast for Docker and Kubernetes

This setup runs Icecast using Docker and Kubernetes.

## Dockerfile
- **Base Image**: Debian Bookworm Slim
- **Installation**: Installs Icecast 2
- **Configuration**: Copies `icecast.xml` into `/etc/icecast2`
- **Ports Exposed**: 8000
- **Command**: Runs Icecast with the provided config

## Kubernetes Deployment & Service
- **Deployment**: Deploys Icecast as a single replica.
  - Exposes ports 8000
- **Service**: Exposes Icecast via NodePort on ports 8000

## Icecast Configuration (`icecast.xml`)
- **Basic Setup**: Configures hostname, location, and admin details.
- **Limits**: Max 128 clients, 5 sources.
- **Stream Mount**: `/stream` with custom authentication.
- **Logging**: Logs to stdout/stderr.
- **Security**: Runs with `icecast2` user and group.
