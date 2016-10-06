class Dashboard
  def lists
    @beds = Fullfillment.all.order("date DESC").group(:bed_id)
    @employees = Employee.all
  end
end
