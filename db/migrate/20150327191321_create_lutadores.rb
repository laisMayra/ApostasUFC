class CreateLutadores < ActiveRecord::Migration
  def change
    create_table :lutadores do |t|
      t.string :nome
      t.float :altura
      t.float :peso
      t.string :categoria
      t.string :especialidade
      t.integer :ranking

      t.timestamps null: false
    end
  end
end
