# rtlamr-collect-docker
Docker container running bemasher's rtlamr and rtlamr-collect GO applications.
I'm running this on unRAID along with 
1.) bemasher's rtl-sdr docker (passing /dev/bus/usb/xxx/yyy RTL stick through to container - know your port!)
2.) influxDB official docker (know your port)
3.) THIS - using the following environment variables (defaults given)
    RTLSERVER: <hostIP>:<rtl-amr port>
    COLLECT_INFLUXDB_HOSTNAME: http://<hostIP>:influxDBPort>/
    COLLECT_INFLUXDB_HOSTNAME: rtlamr
    COLLECT_STRICTIDM: 1 (may need to changed based on your equipment?)
    RTLAMR_FORMAT: json
    RTLAMR_FILTERID: <Your Meter's ID> - I leave this blank to compare against other meters...you may need/opt to filter based on privacy
    COLLECT_INFLUXDB_USER: <influx user for rtlamr data>
    COLLECT_INFLUXDB_PASS: <influx user Password for rtlamr data>
    RTLAMR_MSGTYPE: idm
4.) Grafana docker for viewing data
    
Not sure I'm getting all data with this properly.  Still somewhat WIP but seems to be working.
