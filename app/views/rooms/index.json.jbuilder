json.array!(@rooms) do |room|
  json.extract! room, :id, :name, :location, :capacity
  json.url room_url(room, format: :json)
end
