Rails.application.routes.draw do
  devise_for :users
  get 'prototypes', to: 'prototypes#index'
  resources :prototypes do
    resources :comments, only: :create
  end
  resources :users, only: :show

end
