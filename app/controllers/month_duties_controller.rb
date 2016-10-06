class MonthDutiesController < ApplicationController
  before_action :set_month_duty, only: [:show, :edit, :update, :destroy]

  # GET /month_duties
  # GET /month_duties.json
  def index
    @month_duties = MonthDuty.all
  end

  # GET /month_duties/1
  # GET /month_duties/1.json
  def show
  end

  # GET /month_duties/new
  def new
    @month_duty = MonthDuty.new
  end

  # GET /month_duties/1/edit
  def edit
  end

  # POST /month_duties
  # POST /month_duties.json
  def create
    @month_duty = MonthDuty.new(month_duty_params)

    respond_to do |format|
      if @month_duty.save
        format.html { redirect_to @month_duty, notice: 'Month duty was successfully created.' }
        format.json { render :show, status: :created, location: @month_duty }
      else
        format.html { render :new }
        format.json { render json: @month_duty.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /month_duties/1
  # PATCH/PUT /month_duties/1.json
  def update
    respond_to do |format|
      if @month_duty.update(month_duty_params)
        format.html { redirect_to @month_duty, notice: 'Month duty was successfully updated.' }
        format.json { render :show, status: :ok, location: @month_duty }
      else
        format.html { render :edit }
        format.json { render json: @month_duty.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /month_duties/1
  # DELETE /month_duties/1.json
  def destroy
    @month_duty.destroy
    respond_to do |format|
      format.html { redirect_to month_duties_url, notice: 'Month duty was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_month_duty
      @month_duty = MonthDuty.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def month_duty_params
      params.require(:month_duty).permit(:employee_id, :count, :date)
    end
end
