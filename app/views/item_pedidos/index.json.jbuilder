json.array!(@item_pedidos) do |item_pedido|
  json.extract! item_pedido, :id, :quantidade, :produto_id, :valor_unitario, :valor_total
  json.url item_pedido_url(item_pedido, format: :json)
end
