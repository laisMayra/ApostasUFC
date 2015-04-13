json.array!(@lutadores) do |lutador|
  json.extract! lutador, :id, :nome, :altura, :peso, :categoria, :especialidade, :ranking
  json.url lutador_url(lutador, format: :json)
end
