class CreateJogadores < ActiveRecord::Migration
  def change
    create_table :jogadores do |t|
      t.string :nome
      t.string :cpf
      t.string :rg
      t.string :telefone
      t.string :endereco
      t.string :usuario
      t.string :senha
      t.string :numeroConta
      t.string :agencia
      t.string :banco

      t.timestamps null: false
    end
  end
end
