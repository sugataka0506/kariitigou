Rails.application.routes.draw do
  root 'users#index'

  get 'users/new'
  get 'users/new2'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
