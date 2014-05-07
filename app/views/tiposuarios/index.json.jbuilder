json.array!(@tiposuarios) do |tiposuario|
  json.extract! tiposuario, :id, :name, :ativo
  json.url tiposuario_url(tiposuario, format: :json)
end
