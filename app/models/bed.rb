class Bed < ApplicationRecord
  has_many :fullfillments

  def last_fullfillment
    fullfillments.order("date ASC").last
  end
end
