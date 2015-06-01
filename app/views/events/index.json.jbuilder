json.array!(@events) do |event|
  json.extract! event, :id, :title, :starts, :ends, :description, :address_1, :address_2, :city, :state, :zip, :lat, :lon
  json.url event_url(event, format: :json)
end
