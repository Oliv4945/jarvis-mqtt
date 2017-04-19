#!/usr/bin/env python
from paho.mqtt import publish
import argparse


if __name__ == "__main__":
    parser = argparse.ArgumentParser(description='Jarvis MQTT Gateway')
    parser.add_argument('-m', '--message', help='Message to send to MQTT')
    parser.add_argument('-t', '--topic', help='MQTT topic to publish data')
    parser.add_argument('-p', '--port', help='MQTT server port')
    parser.add_argument('-s', '--server', help='MQTT server address or hotsname')
    args = parser.parse_args()

    # Publish the message
    publish.single(args.topic, args.message.decode('utf-8'), hostname=args.server, port=args.port)

