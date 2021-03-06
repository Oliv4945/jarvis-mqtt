
# Jarvis server address (hostname or IP)
jv_pg_mqtt_server="localhost"

# Launch a MQTT broker (mosquitto) with Jarvis (true/false)
jv_pg_mqtt_launch_broker=false

# Jarvis server port
jv_pg_mqtt_port=1883

# Jarvis root topic to subscribe/publish, without trailing slash
jv_pg_mqtt_topic="/Jarvis"

# Jarvis topic to subscribe to (to ask Jarvis to say/execute)
# Both are optionnal, 'jv_pg_mqtt_subscribe_execute' disabled by default
jv_pg_mqtt_subscribe_say="$jv_pg_mqtt_topic/say"
#jv_pg_mqtt_subscribe_execute="$jv_pg_mqtt_topic/execute"

# Use SSL, optionnal. Comment to disable
#jv_pg_mqtt_ssl="--ssl"

# Use login:password. Comment to disable
#jv_pg_mqtt_auth="login:password"
