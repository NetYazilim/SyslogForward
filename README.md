# syslog forwarder
## Forward syslog messages to [Telegraf](https://docs.influxdata.com/telegraf/)

```
docker run -d --network syslog --name telegraf  netyazilim/telegraf 
docker run -d --network syslog --name rsyslog  -p 514:514/udp -e TARGET_NAME="telegraf" -e TARGET_PORT=6514 netyazilim/syslogforward 
```
