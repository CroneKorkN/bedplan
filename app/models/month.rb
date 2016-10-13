class Month < ApplicationRecord
  has_many :fullfillments, dependent: :destroy
  has_many :month_duties, dependent: :destroy

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

  def duty_factor
    bed_count.to_f/employee_count
  end

  def self.current
    find_or_create_by date: Date.today.beginning_of_month
  end

  after_create do
    update employee_count: Employee.all.count
    update bed_count: Bed.all.count
    create_month_duties
  end

  def create_month_duties
    Employee.all.each do |employee|
      month_duties.create employee: employee
    end
  end
end
