Rails.application.routes.draw do
  resources :contracts
  resources :projects
  resources :developers
  resources :clients
post '/login', to: 'login#create'
# get '/auth', to: 'auth#persist'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
