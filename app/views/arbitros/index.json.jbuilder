json.array!(@arbitros) do |arbitro|
  json.extract! arbitro, :id, :nome, :qtd_lutas
  json.url arbitro_url(arbitro, format: :json)
end
