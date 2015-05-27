GreensborodaycenterOrg::Application.routes.draw do
  root to: 'home#index', id: 'home'
  get "take-action/donors", to: "custom#donors"
  get "take-action/guests", to: "custom#guests"
  get "take-action/volunteers", to: "custom#volunteers"
  match '/*id' => 'high_voltage/pages#show', :as => :static, :via => :get
end
