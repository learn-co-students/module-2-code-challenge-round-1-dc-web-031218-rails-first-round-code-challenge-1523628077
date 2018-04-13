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

    @superhero = Superhero.new(name: params[:superhero][:name],
                                  super_name: params[:superhero][:super_name],
                                  superpower_id: params[:superhero][:superpower_id])

    @superhero.save
    redirect_to superhero_path(@superhero)
  end

  # def search
  #
  # end


end
