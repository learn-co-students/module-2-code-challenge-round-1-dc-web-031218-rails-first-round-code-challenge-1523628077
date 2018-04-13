Rails.application.routes.draw do
  resources :superpowers, only: [:index, :show]
  resources :superheroes, only: [:index, :show, :create, :new]
  # get '/search', to: 'superhero#search', as :show
end
