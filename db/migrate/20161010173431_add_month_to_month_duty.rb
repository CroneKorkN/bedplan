class AddMonthToMonthDuty < ActiveRecord::Migration[5.0]
  def change
    add_reference :month_duties, :month, foreign_key: true
  end
end
