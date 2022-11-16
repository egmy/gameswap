Rails.application.routes.draw do
  devise_for :users
  root to: redirect('index')

  get 'index', to: 'games#index', as: 'games'

  get 'index/:game_id', to: 'listings#index', as: 'game'
  
  get 'index/:game_id/new', to: 'listings#new', as: 'new_game_listing'

end
