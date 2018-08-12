Rails.application.routes.draw do
  get 'home/show'
  devise_for :users, controllers: { registrations: 'registrations' }
  root 'home#show'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
