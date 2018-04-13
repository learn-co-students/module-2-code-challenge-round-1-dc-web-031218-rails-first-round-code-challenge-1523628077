class SuperheroesController < ApplicationController

  def index
    @superheroes = Superhero.all
  end

  def show
    @superhero = Superhero.find(params[:id])
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

  def edit
    @superhero = Superhero.find(params[:id])
  end

  def update
    @superhero = Superhero.find(params[:id])
    @superhero.update(superhero_params)

    redirect_to superhero_path(@superhero)
  end

  def delete
    @superhero = Superhero.find(params[:id])
    @superhero.delete

    redirect_to superhero_path
  end

  private

  def superhero_params
    params.require(:superhero).permit(:name, :super_name)
  end
end
