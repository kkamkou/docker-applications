
```
docker build -t flume .
docker run -ti --rm flume -Dflume.root.logger=INFO,console
// docker run -ti --rm -v `$PWD/config`:/opt/app/config flume -Dflume.root.logger=INFO,console
```

```
CMD: ["agent", "-n", "a1", "-c", "conf", "-f", "config/flume.cfg"]
```

The config file: `/opt/app/config/flume.cfg`
