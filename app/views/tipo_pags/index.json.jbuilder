json.array!(@tipo_pags) do |tipo_pag|
  json.extract! tipo_pag, :id, :description, :active
  json.url tipo_pag_url(tipo_pag, format: :json)
end
