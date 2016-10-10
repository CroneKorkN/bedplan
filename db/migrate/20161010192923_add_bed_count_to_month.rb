class AddBedCountToMonth < ActiveRecord::Migration[5.0]
  def change
    add_column :months, :bed_count, :integer
  end
end
