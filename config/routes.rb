Rails.application.routes.draw do
  get 'introduction/index'
  root to: "introduction#index"
end
