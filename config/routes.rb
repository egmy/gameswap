Rails.application.routes.draw do
  devise_for :users
  root to: redirect('index')

  get 'index', to: 'games#index', as: 'games'
end
