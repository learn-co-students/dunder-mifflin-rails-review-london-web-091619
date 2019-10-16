Rails.application.routes.draw do
  get "/dogs/sorted", to: "dogs#sorted_by_number_of_owners", as: "sorted_dogs"
  resources :dogs, only: [:index, :show]
  resources :employees, only: [:index, :show, :new, :create, :edit, :update]
end
