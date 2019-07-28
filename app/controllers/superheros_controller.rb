class SuperherosController < ApplicationController
  def index
    @superhero = Superhero.order("RANDOM()").first
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
    params.require(:superhero).permit(:name, :superpower)
  end

end

