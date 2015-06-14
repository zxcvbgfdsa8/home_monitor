require 'yaml'
APP_CONFIG = YAML.load(File.read(Rails.root.to_s + '/config/nest_config.yml'))

class Nest
  def self.get_readings
    inside_temp = nest.current_temperature
    client = YahooWeather::Client.new
    response = client.lookup_location('84604')
    outside_temp = response.condition.temp
    reading = Reading.new
    reading.inside_temperature = inside_temp
    reading.outside_temperature = outside_temp
    reading.save

    humidity = HumidityReading.new
    humidity.humidity = nest.humidity
    humidity.save
  end
  def self.nest
    @@nest ||= NestThermostat::Nest.new(email: APP_CONFIG['nest_email'], password: APP_CONFIG['nest_password'])
  end
end