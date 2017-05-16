#!/usr/bin/env python
from paho.mqtt import publish, client
import argparse
import os
from subprocess import call

subscribeSay = ""
subscribeExecute = ""

# MQTT callback
def on_message_cb(mosq, obj, msg):
    if msg.topic == subscribeSay:
        call([os.path.join (".", "jarvis.sh"), "-s", msg.payload])
    elif msg.topic == subscribeExecute:
        call([os.path.join (".", "jarvis.sh"), "-x", msg.payload])

if __name__ == "__main__":
    parser = argparse.ArgumentParser(description='Jarvis MQTT Gateway')
    parser.add_argument('-m', '--message', help='Message to send to MQTT')
    parser.add_argument('-t', '--topic', help='MQTT topic to publish data')
    parser.add_argument('-p', '--port', help='MQTT server port')
    parser.add_argument('-s', '--server', help='MQTT server address or hotsname')
    parser.add_argument('-u', '--subscribeSay', help='MQTT topic to subscribe, all reveived data will be said by Jarvis')
    parser.add_argument('-e', '--subscribeExecute', help='MQTT topic to subscribe, all reveived data will be executed by Jarvis')
    args = parser.parse_args()

    # Publish the message
    if args.message is not None:
        publish.single(topic=args.topic, payload=args.message.decode('utf-8'), hostname=args.server, port=args.port)
        exit()    
    # Subscribe to a topic
    if (args.subscribeSay != '') or (args.subscribeExecute != ''):
        mqttc = client.Client()
        mqttc.on_message = on_message_cb
        mqttc.connect(host=args.server, port=args.port)
        if args.subscribeSay != '': 
            subscribeSay = args.subscribeSay
            mqttc.subscribe(topic=subscribeSay, qos=0)
        if args.subscribeExecute != '':
            subscribeExecute = args.subscribeExecute
            mqttc.subscribe(topic=subscribeExecute, qos=0)
        mqttc.loop_forever()

