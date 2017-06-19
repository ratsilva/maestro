Rails.application.routes.draw do
  resources :orcamentos
  devise_for :users

  resources :projects
  resources :clients
  resources :knowledges
  resources :employees
# For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root "home#index"

  get '/general' => 'home#general'
  
  post '/projects/insert_employee'
  post '/projects/delete_employee'

  post '/employees/insert_knowledge'
  post '/employees/delete_knowledge'

  get 'dashboard' => 'dashboard#index'
  get '/chat' => 'users#index'

  resources :conversations do
    resources :messages
  end

end
