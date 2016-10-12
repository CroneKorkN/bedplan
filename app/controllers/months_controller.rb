class MonthsController < ApplicationController
  before_action :set_month, only: [:show, :edit, :update, :destroy]

  def show
    @month_names = Month.names
    @month_duties = []
    Employee.all.each do |employee|
      @month_duties << employee.month_duties.find_or_create_by(
        date: @month
      )
    end
  end

  def destroy
    @month.destroy
    respond_to do |format|
      format.html { redirect_to months_url, notice: 'Month was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_month
      @month = Month.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def month_params
      params.require(:month).permit(:date, :employee_count)
    end
end
