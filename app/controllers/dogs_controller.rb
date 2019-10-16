class DogsController < ApplicationController

  def index 
    @dog = Dog.new
  end

  def show 
    @dogs = Dog.find(params[:id])
  end

end
