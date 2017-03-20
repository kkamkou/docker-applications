flume-trunk, flume-ng-elasticsearch5-sink, rabbitmq-flume-plugin-standalone-1.0.3

```
[sudp] docker build -t flume .
[sudp] docker run -ti --rm flume -Dflume.root.logger=INFO,console
// [sudp] docker run -ti --rm -v `$PWD/config`:/opt/app/config flume -Dflume.root.logger=INFO,console
```

```
CMD: ["agent", "-n", "a1", "-c", "conf", "-f", "config/flume.cfg"]
```

The config file: `/opt/app/config/flume.cfg`
