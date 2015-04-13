class CreateArbitros < ActiveRecord::Migration
  def change
    create_table :arbitros do |t|
      t.string :nome
      t.integer :qtd_lutas

      t.timestamps null: false
    end
  end
end
