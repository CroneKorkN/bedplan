class CreateEmployees < ActiveRecord::Migration[5.0]
  def change
    create_table :employees do |t|
      t.string :name
      t.float :score
      t.date :score_date

      t.timestamps
    end
    add_index :employees, :name
    add_index :employees, :score
  end
end
