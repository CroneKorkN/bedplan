class Bed < ApplicationRecord
  has_many :fullfillments, dependent: :destroy

  def last_fullfillment
    fullfillments.order("date ASC").last || fullfillments.new(
      employee: Employee.find_by(name: "<SYSTEM_EMPLOYEE>"),
      date: created_at
    )
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
