class Employee < ApplicationRecord
  has_many :fullfillments, dependent: :destroy
  has_many :month_duties, dependent: :destroy
  default_scope ->{where("name != ?", "<SYSTEM_EMPLOYEE>")}

  def score
    score = 0
    Month.all.each do |month|
      puts "#{name}: + #{fullfillments.where(month: month).count} - #{month.duty_factor}"
      score += fullfillments.where(month: month).count - month.duty_factor
    end
    score
  end
end
