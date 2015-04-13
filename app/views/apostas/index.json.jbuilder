json.array!(@apostas) do |aposta|
  json.extract! aposta, :id, :tipoAposta_id, :luta_id, :jogador_id, :resultado, :valor
  json.url aposta_url(aposta, format: :json)
end
