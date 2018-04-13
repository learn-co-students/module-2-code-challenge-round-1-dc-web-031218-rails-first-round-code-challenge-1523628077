Rails.application.routes.draw do
  resources :superpowers
  resources :superheroes

  #add route: post '/superheroes'
    # in order to build out filter functionality in the controller and maybe in th model since
    # I suspect there will be model logic involved
end
