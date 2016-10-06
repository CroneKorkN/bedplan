class CreateFullfillments < ActiveRecord::Migration[5.0]
  def change
    create_table :fullfillments do |t|
      t.references :employee, foreign_key: true
      t.references :bed, foreign_key: true
      t.references :month, foreign_key: true
      t.integer :day

      t.timestamps
    end
    add_index :fullfillments, :day
  end
end
