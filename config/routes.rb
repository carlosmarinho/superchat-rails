Rails.application.routes.draw do
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  devise_for :users
  root 'home#index'
  post '/my_new_api', to: 'home#create_chat', as: :my_new_api
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
