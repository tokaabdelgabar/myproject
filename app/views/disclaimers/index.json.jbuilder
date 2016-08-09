json.array!(@disclaimers) do |disclaimer|
  json.extract! disclaimer, :id
  json.url disclaimer_url(disclaimer, format: :json)
end
