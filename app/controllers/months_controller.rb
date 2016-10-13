class MonthsController < ApplicationController
  before_action :set_month, only: [:show, :edit, :update, :destroy]

  def index
    @months = Month.all
  end

  def show
    @month_names = Month.names
    @month_duties = []
    Employee.all.each do |employee|
      @month_duties << employee.month_duties.find_or_create_by(
        date: @month
      )
    end

  end

  def new
    @month = Month.new
  end

  def edit
  end

  def create
    @month = Month.new(month_params)

    respond_to do |format|
      if @month.save
        format.html { redirect_to @month, notice: 'Month was successfully created.' }
        format.json { render :show, status: :created, location: @month }
      else
        format.html { render :new }
        format.json { render json: @month.errors, status: :unprocessable_entity }
      end
    end
  end

  def update
    respond_to do |format|
      if @month.update(month_params)
        format.html { redirect_to @month, notice: 'Month was successfully updated.' }
        format.json { render :show, status: :ok, location: @month }
      else
        format.html { render :edit }
        format.json { render json: @month.errors, status: :unprocessable_entity }
      end
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
