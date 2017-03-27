flume-trunk, flume-ng-elasticsearch5-sink, rabbitmq-flume-plugin-standalone-1.0.3

```bash
[sudp] docker build -t flume .
[sudp] docker run -ti --rm flume -Dflume.root.logger=INFO,console
# [sudp] docker run -ti --rm -v `$PWD/config`:/opt/app/config flume \
#  -Dflume.root.logger=INFO,console -Dflume.monitoring.type=http -Dflume.monitoring.port=34545
```

```
CMD: ["agent", "-n", "a1", "-c", "conf", "-f", "config/flume.cfg"]
```

The config file: `/opt/app/config/flume.cfg`
