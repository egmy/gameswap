Rails.application.routes.draw do
  devise_for :users
  root to: redirect('index')

  get 'index', to: 'games#index', as: 'games'

  get 'index/:game_id', to: 'listings#index', as: 'game'

  get 'index/:game_id/new', to: 'listings#new', as: 'new_game_listing'

  get 'listing/:listing_id/offer/new', to: 'offers#new', as: 'new_offer'

end
