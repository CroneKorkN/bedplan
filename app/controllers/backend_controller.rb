class BackendController < ApplicationController
  def index # dashboard
    Month.find_or_create_by date: Date.today.beginning_of_month
    @months = Month.all
    @month_names = Month.names
    @employees = Employee.all
    @beds = Bed.all
  end
end
