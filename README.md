<!---
IMPORTANT
=========
This README.md is displayed in the WebStore as well as within Jarvis app
Please do not change the structure of this file
Fill-in Description, Usage & Author sections
Make sure to rename the [en] folder into the language code your plugin is written in (ex: fr, es, de, it...)
For multi-language plugin:
- clone the language directory and translate commands/functions.sh
- optionally write the Description / Usage sections in several languages
-->
## Description
This plugin publishes all Jarvis activity to MQTT

## Usage
Topics published by the plugin
- `$jv_pg_mqtt_topic/said` - Everything said by Jarvis
- `$jv_pg_mqtt_topic/events` - All events (Starting, Entering command, stop speaking...)

Topic subscribed by the plugin
- `$jv_pg_mqtt_topic/say` - Publish to the topic and Jarvis will say it (TODO)

## Author
[Oliv4945](http://iopush.net)
