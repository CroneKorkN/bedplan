class Fullfillment < ApplicationRecord
  belongs_to :employee
  belongs_to :bed
  belongs_to :month
end
