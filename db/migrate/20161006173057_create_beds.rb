class CreateBeds < ActiveRecord::Migration[5.0]
  def change
    create_table :beds do |t|
      t.string :name

      t.timestamps
    end
    add_index :beds, :name
  end
end
