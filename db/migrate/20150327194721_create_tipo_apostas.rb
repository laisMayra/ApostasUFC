class CreateTipoApostas < ActiveRecord::Migration
  def change
    create_table :tipo_apostas do |t|
      t.string :descricao

      t.timestamps null: false
    end
  end
end
