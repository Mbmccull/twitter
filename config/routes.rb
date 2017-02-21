Rails.application.routes.draw do
  get 'profiles/:id' => 'profiles#show', as: :profile

  get 'profiles' => 'profiles#index'

  devise_for :users
  resources :tweets
  resources :relationships
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
