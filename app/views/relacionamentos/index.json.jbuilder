json.array!(@relacionamentos) do |relacionamento|
  json.extract! relacionamento, :id, :name, :tipo, :user_id
  json.url relacionamento_url(relacionamento, format: :json)
end
