json.array!(@produtos) do |produto|
  json.extract! produto, :id, :name, :valor, :descricao, :unidade, :saldo, :ativo
  json.url produto_url(produto, format: :json)
end
