class CreateMonthDuties < ActiveRecord::Migration[5.0]
  def change
    create_table :month_duties do |t|
      t.references :employee, foreign_key: true
      t.integer :count
      t.date :date

      t.timestamps
    end
    add_index :month_duties, :date
  end
end
