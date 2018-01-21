Rails.application.routes.draw do
  resources :sections
  resources :decks
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  root 'decks#index'
end
