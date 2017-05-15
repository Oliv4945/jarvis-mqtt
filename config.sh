
# Jarvis server address (hostname or IP)
jv_pg_mqtt_server="localhost"

# Launch a MQTT broker (mosquitto) with Jarvis (true/false)
jv_pg_mqtt_launch_broker=false

# Jarvis server port
jv_pg_mqtt_port=1883

# Jarvis root topic to subscribe/publish, without trailing slash
jv_pg_mqtt_topic="/Jarvis"

# Jarvis topic to subscribe to (to ask Jarvis to say/execute)
jv_pg_mqtt_subscribe_say="/Jarvis/say"
jv_pg_mqtt_subscribe_execute="/Jarvis/execute"
