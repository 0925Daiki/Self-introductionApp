Rails.application.routes.draw do
  get 'introductions/index'
  devise_for :users
  root to: "introductions#index"
  resources :introductions, only:[:index, :new, :create] do
  end
end
