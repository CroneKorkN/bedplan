class CreateEmployees < ActiveRecord::Migration[5.0]
  def change
    create_table :employees do |t|
      t.string :name
      t.float :score
      t.references :month, foreign_key: true

      t.timestamps
    end
    add_index :employees, :name
    add_index :employees, :score
  end
end
