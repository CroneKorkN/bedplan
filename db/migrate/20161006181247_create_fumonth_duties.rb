class CreateFumonthDuties < ActiveRecord::Migration[5.0]
  def change
    create_table :fumonth_duties do |t|
      t.references :employee, foreign_key: true
      t.integer :count
      t.date :date

      t.timestamps
    end
  end
end
