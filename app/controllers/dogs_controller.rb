class DogsController < ApplicationController
  def index
    @dogs = Dog.all
  end

  def new
    @dog = Dog.new
  end

  def show
    @dog = Dog.find(params[:id])
  end
end
