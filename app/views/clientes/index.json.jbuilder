json.array!(@clientes) do |cliente|
  json.extract! cliente, :id, :name, :ativo, :logradouro, :numero, :complemento, :bairro, :estado, :cidade, :cep, :cnpj_cpf, :tipocad, :contato, :telefone, :email, :limite
  json.url cliente_url(cliente, format: :json)
end
