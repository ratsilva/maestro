Rails.application.routes.draw do
  devise_for :users

  resources :projects
  resources :clients
  resources :knowledges
  resources :employees
# For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root "home#index"

  get '/general' => 'home#general'

end
