Rails.application.routes.draw do
  root to: redirect('index')

  get 'index', to: 'games#index', as: 'games'
end
