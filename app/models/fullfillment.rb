class Fullfillment < ApplicationRecord
  belongs_to :employee
  belongs_to :bed
  belongs_to :month

  def days_ago
    (Date.today - date).to_i
  end
end
