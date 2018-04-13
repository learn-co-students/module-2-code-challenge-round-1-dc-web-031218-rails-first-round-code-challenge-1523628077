class SuperpowersController < ApplicationController
  def index
    @superpowers = Superpower.all
  end

  def show

  end

 private

 def set_superpower
  @superpower = Superpower.find(params[:id])
 end
end
