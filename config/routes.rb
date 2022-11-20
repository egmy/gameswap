Rails.application.routes.draw do
  devise_for :users
  root to: redirect('index')

  get 'index', to: 'games#index', as: 'games'
  get 'index/:game_id', to: 'listings#index', as: 'game'
  post 'index/:game_id', to: 'listings#create'
  get 'index/:game_id/new', to: 'listings#new', as: 'new_game_listing'

  get 'games_index', to: 'offers#games_index', as: 'games_index' # used for WF06 'Choose from a list'

  get 'listing/:listing_id/offers', to: 'offers#index', as: 'offers'
  get 'listing/:listing_id/offers/new', to: 'offers#new', as: 'new_offer'
  post 'listing/:listing_id/offers', to: 'offers#create'
  delete 'listing/:listing_id/offers/:id', to: 'offers#destroy', as: 'cancel_offer'

  get 'profile/:profile_id', to: 'profiles#show', as: 'profile' # routes for my_offers, incoming_offers, listings, trade_history
  get 'profile/:profile_id/offers', to: 'offers#index', as: 'my_offers'
  get 'profile/:profile_id/listings', to: 'listings#home', as: 'my_listings'


end
