class CreateFullfillments < ActiveRecord::Migration[5.0]
  def change
    create_table :fullfillments do |t|
      t.references :employee, foreign_key: true
      t.references :bed, foreign_key: true
      t.date :date

      t.timestamps
    end
    add_index :fullfillments, :date
  end
end
