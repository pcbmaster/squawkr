class BiosController < ApplicationController
  before_action :set_bio, only: [:show, :edit, :update]

  def index
<<<<<<< HEAD
    @bios = @users.bio 
=======
    @bios = Bio.show
>>>>>>> 382925bc3c9984b071c7c5fcf27c6a35ef786695
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
