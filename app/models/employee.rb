class Employee < ApplicationRecord
  has_many :fullfillments, dependent: :destroy
  has_many :month_duties, dependent: :destroy
  default_scope ->{where("name != ?", "<SYSTEM_EMPLOYEE>")}

  def score
    score = 0
    Month.where("date <= ?", Date.today).each do |month|
      score += fullfillments.where(month: month).count
      score -= Bed.all.count * month_duties.find_by(month: month).count / month.month_duties.sum(:count)
    end
    score
  end
end
