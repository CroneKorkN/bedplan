class BedsController < ApplicationController
  before_action :set_bed, only: [:show, :edit, :update, :destroy]

  def new
    @bed = Bed.new
  end

  def edit
  end

  def create
    @bed = Bed.new(bed_params)

    if @bed.save
      redirect_to backend_path, notice: 'Bed was successfully created.'
    else
      render :new
    end
  end

  def update
    if @bed.update(bed_params)
      redirect_to backend_path, notice: 'Bed was successfully updated.'
    else
      render :edit
    end
  end

  def destroy
    @bed.destroy
    redirect_to backend_path, notice: 'Bed was successfully destroyed.'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_bed
      @bed = Bed.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def bed_params
      params.require(:bed).permit(:name)
    end
end
