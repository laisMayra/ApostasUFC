json.array!(@tipo_apostas) do |tipo_aposta|
  json.extract! tipo_aposta, :id, :descricao
  json.url tipo_aposta_url(tipo_aposta, format: :json)
end
