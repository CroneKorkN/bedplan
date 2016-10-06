class FumonthDutiesController < ApplicationController
  before_action :set_fumonth_duty, only: [:show, :edit, :update, :destroy]

  # GET /fumonth_duties
  # GET /fumonth_duties.json
  def index
    @fumonth_duties = FumonthDuty.all
  end

  # GET /fumonth_duties/1
  # GET /fumonth_duties/1.json
  def show
  end

  # GET /fumonth_duties/new
  def new
    @fumonth_duty = FumonthDuty.new
  end

  # GET /fumonth_duties/1/edit
  def edit
  end

  # POST /fumonth_duties
  # POST /fumonth_duties.json
  def create
    @fumonth_duty = FumonthDuty.new(fumonth_duty_params)

    respond_to do |format|
      if @fumonth_duty.save
        format.html { redirect_to @fumonth_duty, notice: 'Fumonth duty was successfully created.' }
        format.json { render :show, status: :created, location: @fumonth_duty }
      else
        format.html { render :new }
        format.json { render json: @fumonth_duty.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /fumonth_duties/1
  # PATCH/PUT /fumonth_duties/1.json
  def update
    respond_to do |format|
      if @fumonth_duty.update(fumonth_duty_params)
        format.html { redirect_to @fumonth_duty, notice: 'Fumonth duty was successfully updated.' }
        format.json { render :show, status: :ok, location: @fumonth_duty }
      else
        format.html { render :edit }
        format.json { render json: @fumonth_duty.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /fumonth_duties/1
  # DELETE /fumonth_duties/1.json
  def destroy
    @fumonth_duty.destroy
    respond_to do |format|
      format.html { redirect_to fumonth_duties_url, notice: 'Fumonth duty was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_fumonth_duty
      @fumonth_duty = FumonthDuty.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def fumonth_duty_params
      params.require(:fumonth_duty).permit(:employee_id, :count, :date)
    end
end
