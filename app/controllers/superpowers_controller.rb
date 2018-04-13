class SuperpowersController < ApplicationController
  before_action :get_superpower, only: [:show, :edit, :update, :destroy]

  def index
    @superpowers = Superpower.all
  end

  def show
  end

  private

  def get_superpower
    @superpower = Superpower.find(params[:id])
  end
end
