#!/bin/bash
# Here you can create functions which will be available from the commands file
# You can also use here user variables defined in your config file
# To avoid conflicts, name your function like this
# pg_XX_myfunction () { }
# pg for PluGin
# XX is a short code for your plugin, ex: ww for Weather Wunderground
# You can use translations provided in the language folders functions.sh

function jv_pg_mqtt_start () {
    DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
    jv_debug "Starting MQTT subscriber to $jv_pg_mqtt_server:$jv_pg_mqtt_port$jv_pg_mqtt_subscribe"
    nohup python $DIR/mqttGateway.py --port="$jv_pg_mqtt_port" --server="$jv_pg_mqtt_server" --subscribeSay="$jv_pg_mqtt_subscribe_say" --subscribeExecute="$jv_pg_mqtt_subscribe_execute" $jv_pg_mqtt_ssl 2>&1 | jv_add_timestamps >>$jv_dir/jarvis.log &
}

