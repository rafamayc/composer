json.array!(@pedidos) do |pedido|
  json.extract! pedido, :id, :dataaprovacao, :datapedido, :cliente_id, :tipo_pag_id, :for_pags_id, :valortotal, :statuspedido
  json.url pedido_url(pedido, format: :json)
end
