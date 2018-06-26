class CreateCarteiras < ActiveRecord::Migration[5.2]
  def change
    create_table :carteiras do |t|
      t.string :data
      t.string :total
      t.string :status
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
