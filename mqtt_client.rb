require 'rubygems'
require 'mqtt'

# Publishing to Broker.
MQTT::Client.connect('test.mosquitto.org') do |c|
  c.publish('X', 'MQTT TEST')
end

# Subscribing to a free MQTT Broker.
MQTT::Client.connect('test.mosquitto.org') do |c|
  c.get('X') do |topic,message|
    puts "#{topic}: #{message}"
  end
end