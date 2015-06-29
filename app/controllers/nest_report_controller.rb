class NestReportController < ApplicationController
  def index
    @nest_data = {}
    Reading.all.each do |reading|
      datum = {}
      datum[:inside_temperature] = reading.inside_temperature
      datum[:outside_temperature] = reading.outside_temperature
      @nest_data[reading.created_at.strftime('%d-%m-%Y (%H:%M)')] = datum
    end
    HumidityReading.all.each do |reading|
      @nest_data[reading.created_at.strftime('%d-%m-%Y (%H:%M)')] ||= {}
      @nest_data[reading.created_at.strftime('%d-%m-%Y (%H:%M)')][:humidity] = reading.humidity
    end
  end
end
