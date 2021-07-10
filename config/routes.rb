Rails.application.routes.draw do
  devise_for :users
  root to: "introduction#index"
  resources :introduction, only:[:index, :new, :create] do
  end
end
