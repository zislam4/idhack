json.array!(@incidents) do |incident|
  json.extract! incident, :id, :country, :region, :municipality, :amount, :time_occur, :num_occur, :create_time, :type, :description
  json.url incident_url(incident, format: :json)
end
