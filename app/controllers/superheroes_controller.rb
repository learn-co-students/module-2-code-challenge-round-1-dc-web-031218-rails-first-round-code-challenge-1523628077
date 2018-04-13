class SuperheroesController < ApplicationController

  before_action :set_superhero, only: [:show, :edit, :update, :destroy]
  def index
    @superheroes = Superhero.all
    
  end

  def show
    binding.pry
    @superpower = Superpower.find(:superpower_id)
  end

  def new
    @superhero = Superhero.new
  end

  def create
    @superhero = Superhero.new(superhero_params)

    if @superhero.valid?
      @superhero.save
      redirect_to superhero_path(@superhero)
    else
      render :new
    end
  end



  private 

  def set_superhero
    @superhero = Superhero.find(params[:id])
  end

  def superhero_params
    params.require(:superhero).permit(:name, :super_name)
  end


end
