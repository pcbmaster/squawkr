class BiosController < ApplicationController
  before_action :set_bio, only: [:show, :edit, :update]

  def index
    @bios = Bio.show
  end 

  def show
  end

  def new
    @bio = current_user.bios.new
  end

  def edit
    render partial: "form"
  end

  def create
    @bio = current_user.bios.new(bio_params)

    if @bio.save
      redirect_to bio_path
    else   
      render :new
    end
  end


  private 

    def set_bio
      @bio = Bio.find(params[:id])
    end

    def bio_params
      params.require(:bio).permit(:age, :description, :location)
    end 
end
