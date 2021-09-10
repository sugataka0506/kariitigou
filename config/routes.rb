Rails.application.routes.draw do
  devise_for :users
  root 'users#index'
  get "users/:id" => "users#show"
  get "users/:id/chats" => "chats#index"
  post "users/:id/chats" => "chats#create"
  resource :me, controller: :me
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
