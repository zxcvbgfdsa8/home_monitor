json.array!(@humidity_readings) do |humidity_reading|
  json.extract! humidity_reading, :id, :humidity, :created_at
  json.url humidity_reading_url(humidity_reading, format: :json)
end
