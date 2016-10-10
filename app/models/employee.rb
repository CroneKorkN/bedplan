class Employee < ApplicationRecord
  has_many :fullfillments
  has_many :month_duties

  def score
    score_cache + fullfillments.where("date > ?", score_cache_date).count - month_duties.where("date > ?", score_cache_date).sum(:count)
  end
end
