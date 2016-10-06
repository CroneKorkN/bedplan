class Employee < ApplicationRecord
  has_many :fullfillments
  has_many :month_duties

end
