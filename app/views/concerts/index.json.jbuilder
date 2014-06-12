json.array!(@concerts) do |concert|
  json.extract! concert, :id, :date, :nom, :ville
  json.url concert_url(concert, format: :json)
end
