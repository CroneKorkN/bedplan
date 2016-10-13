class FrontendController < ApplicationController
  def index
    # get orderes bed-list
    #@beds = []
    #Fullfillment.all.order("date ASC").group(:bed_id).pluck(:bed_id).each do |id|
    #  @beds << Bed.find(id)
    #end
    @beds = Bed.all.to_a.sort_by {|bed| bed.last_fullfillment.date}
    @employees = Employee.all.to_a.sort_by {|employee| employee.score}
    @min_score = @employees.first.score

    @frontend = true
  end
end
