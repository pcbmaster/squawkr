class BiosController < ApplicationController[
  before_action :set_bios

  def index
    @bios = Bios.all 
  end 

  def create
    @bios = Bios.new(bio_params)

    if @bios.save
      redirect_to bios_path
    else   
      render :new
    end
  end

  def show
  end

  def edit
  end

  private 
    def bios_params
      params.require(:bios).permit(:name)
    end 
end
