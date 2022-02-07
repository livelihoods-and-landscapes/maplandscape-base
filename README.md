# maplandscape-base

Base docker image for *maplandscape* dashboard apps. It is based on rocker's Ubuntu 20.04 LTS R 4.1.2 image. 

Includes shiny and sf and various system and R package dependencies to run the *maplandscape* dashboard apps.

## Gotchas

Make sure permissions are set on `install_maplandscape.sh` so it can be run in the docker container:

```
chmod 777 install_maplandscape.sh  
```