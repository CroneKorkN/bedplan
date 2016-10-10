class Month < ApplicationRecord
  def self.create_missing
    month = Employee.all.order("created_at ASC").first.created_at.beginning_of_month
    while month <= Date.today.+(1.month)
      Month.find_or_create_by date: month.beginning_of_month
      month = month + 1.month
    end
  end

  def self.names
    ["Januar", "Februar", "März", "April", "Mai", "Juni", "Juli", "August", "September", "Oktober", "November", "Dezember"]
  end

  def after_create
    update employee_count: Employee.all.count(:id)
  end
end
