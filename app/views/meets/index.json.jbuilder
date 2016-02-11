json.array!(@meets) do |meet|
  json.extract! meet, :id, :content, :token
  json.url meet_url(meet, format: :json)
end
