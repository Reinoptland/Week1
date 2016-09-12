Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root "pokemons#index"

  get "pokemons" => "pokemons#index"
  get "pokemons/new" => "pokemons#new", as: :new_pokemon
  post 
  get "pokemons/:id" => "pokemons#show", as: :pokemon

end
