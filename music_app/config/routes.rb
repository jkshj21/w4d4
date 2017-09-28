Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  resources :users, only: [:show, :new, :create]
  resources :session, only: [:destroy, :new, :create]
  resources :bands
  resources :albums
  resources :tracks

end
