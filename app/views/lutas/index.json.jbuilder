json.array!(@lutas) do |luta|
  json.extract! luta, :id, :lutador1_id, :lutador2_id, :arbitro_id, :vencedor, :tipoVitoria, :rounds, :horario, :data
  json.url luta_url(luta, format: :json)
end
