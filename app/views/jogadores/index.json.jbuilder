json.array!(@jogadores) do |jogador|
  json.extract! jogador, :id, :nome, :cpf, :rg, :telefone, :endereco, :usuario, :senha, :numeroConta, :agencia, :banco
  json.url jogador_url(jogador, format: :json)
end
