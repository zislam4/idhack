json.array!(@agencies) do |agency|
  json.extract! agency, :id, :name, :agency_type, :description, :country
  json.url agency_url(agency, format: :json)
end
