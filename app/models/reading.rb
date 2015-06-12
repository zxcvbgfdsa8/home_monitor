class Reading < ActiveRecord::Base
  def self.get_reading
    nest = NestThermostat::Nest.new(email: 'zxcvbgfdsa8@gmail.com', password: 'jetaime010')
    inside_temp = nest.current_temperature
    client = YahooWeather::Client.new
    response = client.lookup_location('84604')
    outside_temp = response.condition.temp
    reading = Reading.new
    reading.inside_temperature = inside_temp
    reading.outside_temperature = outside_temp
    reading.save
  end
end
