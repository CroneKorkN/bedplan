class AddMonthToFullfillment < ActiveRecord::Migration[5.0]
  def change
    add_reference :fullfillments, :month, foreign_key: true
  end
end
