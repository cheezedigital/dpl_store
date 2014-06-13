Rails.application.routes.draw do
  resources :products
  root 'site#index'
end
