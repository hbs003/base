class CreateSeguros < ActiveRecord::Migration[5.2]
  def change
    create_table :seguros do |t|
      t.string :tipo
      t.string :valor
      t.string :data_final
      t.string :periodicidade
      t.string :foto
      t.references :user, foreign_key: true
      t.references :carteira, foreign_key: true

      t.timestamps
    end
  end
end
