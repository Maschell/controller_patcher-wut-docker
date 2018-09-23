# controller_patcher Dockerfile (wut)

The image `wiiuwut/controller_patcher` on [Docker Hub](https://hub.docker.com/r/wiiuwut/controller_patcher/) provides a prebuilt library in the `/artifacts` directory. Copy it into your WUT_ROOT folder.  

Example:  
```
COPY --from=wiiuwut/controller_patcher:0.1 /artifacts $WUT_ROOT
```
