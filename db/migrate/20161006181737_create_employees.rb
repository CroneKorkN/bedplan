class CreateEmployees < ActiveRecord::Migration[5.0]
  def change
    create_table :employees do |t|
      t.string :name
      t.boolean :active, default: true, null: false
      t.float :score_cache, default: 0
      t.date :score_cache_date

      t.timestamps
    end
    add_index :employees, :name
    add_index :employees, :score_cache
  end
end
