# docker for noVNC

[![Docker Image Version (latest semver)](https://img.shields.io/docker/v/isayme/novnc?sort=semver&style=flat-square)](https://hub.docker.com/r/isayme/novnc)
![Docker Image Size (latest semver)](https://img.shields.io/docker/image-size/isayme/novnc?sort=semver&style=flat-square)
![Docker Pulls](https://img.shields.io/docker/pulls/isayme/novnc?style=flat-square)

# Usage

```
docker run -it --rm -p 6080:6080 --env VNC_SERVER="127.0.0.1:5900" isayme/novnc
```
