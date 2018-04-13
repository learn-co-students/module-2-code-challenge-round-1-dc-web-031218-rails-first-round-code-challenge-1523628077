class SuperpowersController < ApplicationController
  
  def index
    @superpowers = Superpower.all
  end

  def show
    @superpower = Superpower.find(params[:id])
  end

  def new
    @superpower = Superpower.new
  end

  def create
    @superpower = Superpower.new(superpower_params)

    if @superpower.valid?
      @superpower.save

    redirect_to superpower_path(@superpower)
    else
      render :new
    end
  end

  def edit
    @superpower = Superpower.find(params[:id])
  end

  def update
    @superpower = Superpower.find(params[:id])
    @superpower.update(superpower_params)

    redirect_to superpower_path(@superpower)
  end

  def delete
    @superpower = Superpower.find(params[:id])
    @superpower.delete

    redirect_to superpower_path
  end

  private

  def superpower_params
    params.require(:superpower).permit(:name, :super_name)
  end
end
