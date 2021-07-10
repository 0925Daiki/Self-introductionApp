Rails.application.routes.draw do
  devise_for :users
  get 'introduction/index'
  root to: "introduction#index"
end
