json.array!(@things) do |thing|
  json.extract! thing, :id, :name, :type, :user_id
  json.url thing_url(thing, format: :json)
end
