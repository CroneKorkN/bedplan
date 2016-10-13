class FullfillmentsController < ApplicationController
  before_action :set_fullfillment, only: [:show, :edit, :update, :destroy]

  # GET /fullfillments
  # GET /fullfillments.json
  def index
    @fullfillments = Fullfillment.all
  end

  # GET /fullfillments/1
  # GET /fullfillments/1.json
  def show
  end

  # GET /fullfillments/new
  def new
    if params[:employee_id]
      @employee = Employee.find params[:employee_id]
    else
      @employee = Employee.first
    end

    if params[:month_id]
      @month = Month.find params[:month_id]
    else
      @month = Month.current
    end

    @month = Month.find(params[:month_id])
    @fullfillment = @month.fullfillments.new employee: @employee, date: @month.date
  end

  # GET /fullfillments/1/edit
  def edit
  end

  # POST /fullfillments
  # POST /fullfillments.json
  def create
    @fullfillment = Fullfillment.new(fullfillment_params)
    unless fullfillment_params[:date]
      @fullfillment.date = Date.today
    end
    @fullfillment.month = Month.find_or_create_by date: @fullfillment.date.beginning_of_month

    respond_to do |format|
      if @fullfillment.save
        format.html { redirect_to @fullfillment.month, notice: 'Fullfillment was successfully created.' }
        format.json { render :show, status: :created, location: @fullfillment }
      else
        format.html { render :new }
        format.json { render json: @fullfillment.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /fullfillments/1
  # PATCH/PUT /fullfillments/1.json
  def update
    @fullfillment.month = Month.find_by date: @fullfillment.date.beginning_of_month

    respond_to do |format|
      if @fullfillment.update(fullfillment_params)
        format.html { redirect_to @fullfillment.month, notice: 'Fullfillment was successfully updated.' }
        format.json { render :show, status: :ok, location: @fullfillment }
      else
        format.html { render :edit }
        format.json { render json: @fullfillment.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /fullfillments/1
  # DELETE /fullfillments/1.json
  def destroy
    @fullfillment.destroy
    respond_to do |format|
      format.html { redirect_to @fullfillment.month, notice: 'Fullfillment was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_fullfillment
      @fullfillment = Fullfillment.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def fullfillment_params
      params.require(:fullfillment).permit(:employee_id, :bed_id, :month_id, :date)
    end
end
