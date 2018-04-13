class SuperheroesController < ApplicationController
  before_action :set_superhero, only: [:show, :edit, :update, :destroy]

  def index
    @superhero = Superhero.new
    @superpowers = Superpower.all
    @superheroes = Superhero.all
  end

  def show
    #set_superhero
  end

  def edit
    #set_superhero
  end

  def new
    @superhero = Superhero.new
    @superpowers = Superpower.all
  end

  def update
    #set_superhero
  end

  def create
    @new_hero = Superhero.new(superhero_params)

    if @new_hero.valid?
      @new_hero.save
      redirect_to superheroes_path
    else
      # @new_hero = Superhero.new(superhero_params) tried adding this here but didn't work
      @errors = true
      render :new
    end
  end

  def destroy
    #set_superhero
  end

  private
    def superhero_params
      params.require(:superhero).permit(:name, :super_name, :superpower_id)
    end

    def set_superhero
      @superhero = Superhero.find(params[:id])
    end
end
