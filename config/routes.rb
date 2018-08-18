Rails.application.routes.draw do
  devise_for :teachers
  get 'home/user', to: 'home#user', as: 'user_root'
  get 'home/teacher', to: 'home#teacher', as: 'teacher_root'
  devise_for :users
  
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
