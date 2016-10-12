class Bed < ApplicationRecord
  has_many :fullfillments, destroy: :dependent

  def last_fullfillment
    fullfillments.order("date ASC").last
  end

  def warn_level
    if last_fullfillment.days_ago >= 33
      2
    elsif last_fullfillment.days_ago >= 27
      1
    else
      0
    end
  end
end
