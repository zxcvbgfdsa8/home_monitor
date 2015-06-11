json.array!(@readings) do |reading|
  json.extract! reading, :id, :inside_temperature, :outside_temperature
  json.url reading_url(reading, format: :json)
end
