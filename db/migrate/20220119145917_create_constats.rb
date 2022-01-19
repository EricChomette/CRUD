class CreateConstats < ActiveRecord::Migration[6.0]
  def change
    create_table :constats do |t|
      t.string :name
      t.date :date_of_creation
      t.date :date_last_update
      t.text :paragraph
      t.references :customers, null: false, foreign_key: true

      t.timestamps
    end
  end
end
