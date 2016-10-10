class CreateMonths < ActiveRecord::Migration[5.0]
  def change
    create_table :months do |t|
      t.date :date
      t.integer :employee_count

      t.timestamps
    end
    add_index :months, :date
  end
end
