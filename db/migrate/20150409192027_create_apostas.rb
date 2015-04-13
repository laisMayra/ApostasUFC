class CreateApostas < ActiveRecord::Migration
  def change
    create_table :apostas do |t|
      t.references :tipoAposta, index: true
      t.references :luta, index: true
      t.references :jogador, index: true
      t.string :resultado
      t.float :valor

      t.timestamps null: false
    end
    add_foreign_key :apostas, :tipoApostas
    add_foreign_key :apostas, :lutas
    add_foreign_key :apostas, :jogadores
  end
end
