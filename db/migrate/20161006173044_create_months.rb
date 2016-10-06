class CreateMonths < ActiveRecord::Migration[5.0]
  def change
    create_table :months do |t|
      t.date :date

      t.timestamps
    end
    add_index :months, :date
  end
end
