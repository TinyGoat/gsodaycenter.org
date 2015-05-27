GreensborodaycenterOrg::Application.routes.draw do

  resources :passwords, controller: 'clearance/passwords', only: [:create, :new]
  resource :session, controller: 'clearance/sessions', only: [:create]

  resources :users, controller: 'clearance/users', only: [:create] do
    resource :password,
      controller: 'clearance/passwords',
      only: [:create, :edit, :update]
  end

  get '/sign_in' => 'clearance/sessions#new', as: 'sign_in'
  delete '/sign_out' => 'clearance/sessions#destroy', as: 'sign_out'
  get '/sign_up' => 'clearance/users#new', as: 'sign_up'

  # Root path
  root to: 'home#index', id: 'home'

  # Blog
  resources :posts

  # Handle art-directed pages
  get "take-action/donors", to: "custom#donors"
  get "take-action/guests", to: "custom#guests"
  get "take-action/volunteers", to: "custom#volunteers"

  # Handle tags
  match 'tagged' => 'posts#tagged', :as => 'tagged', :via => :get

  # Wildcard for mixed views
  match '/*id' => 'high_voltage/pages#show', :as => :static, :via => :get
end
