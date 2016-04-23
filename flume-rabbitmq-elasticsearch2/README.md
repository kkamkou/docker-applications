
```
docker build -t flume .
docker run -ti --rm flume -Dflume.root.logger=INFO,console
// docker run -ti --rm -v `$PWD/config`:/opt/app/config flume -Dflume.root.logger=INFO,console
```

The config file: `/opt/app/config/flume.cfg`
