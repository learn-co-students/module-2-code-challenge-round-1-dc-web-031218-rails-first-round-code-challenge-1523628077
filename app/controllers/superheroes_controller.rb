class SuperheroesController < ApplicationController
  def index
    @superheroes = Superhero.all
  end

  def show
    @superhero = Superhero.find(superhero_params[:id])
    @superpower = @superhero.superpower_id
  end

  def new
    @superhero = Superhero.new
  end


  def create
  superpower = Superpower.find_or_create_by(name: superhero_params(:superpower_id)[:superpower_id])
  @superhero = Superhero.create(superhero_params(:name), superhero_params(:super_name), superpower_id: superpower)
  @superhero.save
  redirect_to superhero_path(@superhero)
  end




private

def superhero_params(*args)
params.require(:superhero).permit(*args)
end

end
