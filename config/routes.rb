Rails.application.routes.draw do
  devise_for :users
  root 'users#index'
  
  resource :me, controller: :me
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
