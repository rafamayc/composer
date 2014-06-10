json.array!(@items) do |item|
  json.extract! item, :id, :pedido_id, :produto_id, :quantity, :price
  json.url item_url(item, format: :json)
end
