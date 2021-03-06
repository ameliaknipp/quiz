class ZombieController < ApplicationController

  def index
    @superhero = Superhero.first
  end
  
  def new
    @superhero = Superhero.new
  end

  def create
    Superhero.create(superhero_params)
    redirect_to root_path
  end

  private

  def superhero_params
    params.require(:superheros).permit(:superhero, :superpower)
  end

end
