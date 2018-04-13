class SuperheroesController < ApplicationController
  before_action :get_superhero, only: [:show]

  def index
    @superheroes = Superhero.all
  end

  def new
    @superhero = Superhero.new
  end

  def create
    @superhero = Superhero.new(superhero_params)

    @superpower = params[:superpower_id]
    @superhero.superpower_id = @superpower

    if @superhero.valid?
      @superhero.save
      redirect_to superhero_path(@superhero)
    else
      render :new
    end
  end

  def show
  end

  private

  def superhero_params
    params.require(:superhero).permit(:name, :super_name)
  end

  def get_superhero
    @superhero = Superhero.find(params[:id])
  end
end
