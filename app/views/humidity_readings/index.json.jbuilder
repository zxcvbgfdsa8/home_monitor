json.array!(@humidity_readings) do |humidity_reading|
  json.extract! humidity_reading, :id, :humidity
  json.url humidity_reading_url(humidity_reading, format: :json)
end
