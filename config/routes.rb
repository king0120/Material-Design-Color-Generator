Rails.application.routes.draw do
  devise_for :users, controllers: {
    sessions: 'users/sessions'
  }
  root to: 'static_pages#home'
  # creating RESTful routes for my color palettes
  get '/palettes', to: 'palettes#index', as: :palettes

  get 'palettes/new', to: 'palettes#new', as: :new

  post '/palettes', to: 'palettes#create', as: :create

  get '/palettes/:id', to: 'palettes#show', as: :palette

  get '/palettes/:id/edit', to: 'palettes#edit', as: :edit

  patch 'palettes/:id', to: 'palettes#update', as: :update

  delete 'palettes/:id', to: 'palettes#destroy', as: :delete
end
