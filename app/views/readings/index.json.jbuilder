json.array!(@readings) do |reading|
  json.extract! reading, :id, :inside_temperature, :outside_temperature, :created_at
  json.url reading_url(reading, format: :json)
end
