class CreateLutas < ActiveRecord::Migration
  def change
    create_table :lutas do |t|
      t.references :lutador1, index: true
      t.references :lutador2, index: true
      t.references :arbitro, index: true
      t.string :vencedor
      t.string :tipoVitoria
      t.integer :rounds
      t.timestamp :horario
      t.date :data

      t.timestamps null: false
    end
    add_foreign_key :lutas, :lutador1s
    add_foreign_key :lutas, :lutador2s
    add_foreign_key :lutas, :arbitros
  end
end
