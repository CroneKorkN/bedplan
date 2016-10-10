class BackendController < ApplicationController
  def index # dashboard
    Month.find_or_create_by date: Date.today.beginning_of_month
    @months = Month.all
    @month_names = Month.names
    @employees = Employee.all
    @beds = Bed.all
  end

  def month
    @month = Date.parse(params["month"]).beginning_of_month
    @month_names = month_names
    @month_duties = []
    Employee.all.each do |employee|
      @month_duties << employee.month_duties.find_or_create_by(
        date: @month
      )
    end
  end


end
