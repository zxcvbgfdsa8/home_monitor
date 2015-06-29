json.array! @nest_data do |date, data|
  json.date date
  json.inside_temperature data[:inside_temperature]
  json.outside_temperature data[:outside_temperature]
  json.humidity data[:humidity]
end
=begin
json_array = []
@nest_data.each do |date, data|
  json_array << {
      :date => date,
      :inside_temperature => data[:inside_temperature],
      :outside_temperature => data[:outside_temperature],
      :humidity => data[:humidity]
  }
end
json_array.to_json
=end