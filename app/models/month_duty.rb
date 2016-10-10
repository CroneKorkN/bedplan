class MonthDuty < ApplicationRecord
  belongs_to :employee
  belongs_to :month
end
