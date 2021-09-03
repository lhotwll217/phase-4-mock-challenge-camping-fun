Rails.application.routes.draw do
  resources :campers
  resources :sign_ups
  resources :activities
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
