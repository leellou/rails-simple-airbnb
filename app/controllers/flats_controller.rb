class FlatsController < ApplicationController
  before_action :set_flat, only: [:show]
  # GET /flats
  def index
    @flats = Flat.all
  end

  def new
    @flat = Flat.new
  end

  def create
    @flat = Flat.new(flat_params)

    if @flat.save
      redirect_to flat_path(@flat)
    else
      render :new
    end
  end

  def show

  end

 private

 def set_flat
   @flat = Flat.find(params[:id])
 end
  def flat_params
     params.require(:flat).permit(:name, :address, :price_per_night, :number_of_guests)
   end
end
