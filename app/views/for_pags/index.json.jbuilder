json.array!(@for_pags) do |for_pag|
  json.extract! for_pag, :id, :description, :days, :active
  json.url for_pag_url(for_pag, format: :json)
end
