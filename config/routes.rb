Rails.application.routes.draw do
  resources :products
  root 'site#index' #only for the home page. nothing else
  get '/about' => 'site#about'
end
