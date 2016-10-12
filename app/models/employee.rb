class Employee < ApplicationRecord
  has_many :fullfillments
  has_many :month_duties, dependent: :destroy

  def score
    score = 0
    Month.all.each do |month|
      puts fullfillments.where(month: month).count
      puts month.duty_factor
      puts (fullfillments.where(month: month).count - month.duty_factor)
      score += (fullfillments.where(month: month).count - month.duty_factor)
    end
    score
  end
end
