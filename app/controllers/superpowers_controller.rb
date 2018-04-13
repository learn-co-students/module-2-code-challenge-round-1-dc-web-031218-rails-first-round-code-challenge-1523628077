class SuperpowersController < ApplicationController
  before_action :set_superpower, only: [:show, :edit, :update, :destroy]

  def index
    @superpowers = Superpower.all
  end

  def show
    #set_superpower
  end

  def edit
    #set_superpower
  end

  def new
    @superhero = Superhero.new
  end

  def update
    #set_superpower
  end

  def create

  end

  def destroy
    #set_superpower
  end

  private
    def superpower_params
      params.require(:superpower).permit(:name, :description)
    end

    def set_superpower
      @superpower = Superpower.find(params[:id])
    end


end
