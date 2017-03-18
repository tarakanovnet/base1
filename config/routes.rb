Rails.application.routes.draw do
  #get 'welcome/index'
  #get 'welcome/insufficient_privileges'

  resources :role_users
  resources :roles
  get 'welcome/index', as: :index 
  get 'welcome/insufficient_privileges', as: :ip
  
  resources :workers
  resources :rooms
  resources :floors
  resources :buildings
  resources :territories
  root :to => 'welcome#index'
  resources :user_sessions
  resources :users do
    member do
      get :activate
    end
  end

  get 'login' => 'user_sessions#new', :as => :login
  get 'logout' => 'user_sessions#destroy', :as => :logout

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
