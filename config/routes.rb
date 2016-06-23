Rails.application.routes.draw do

  get "/search(.:format)" => "search#index", as: :search

  # get 'genres/index'
  #
  # get 'genres/show'

  resources :novels

  # get 'novels/index'
  #
  # get 'novels/show'

  resources :authors

  resources :genres

  root 'authors#index'

  get 'authors/index'

  get 'authors/show'



end
