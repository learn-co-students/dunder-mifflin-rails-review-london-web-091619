class DogsController < ApplicationController
  def show
    @dog = Dog.find(params[:id])
  end

  def sorted_by_number_of_owners
    @dogs = Dog.all.sort_by { |dog| dog.employees.count }.reverse
    render "sorted"
  end
end
