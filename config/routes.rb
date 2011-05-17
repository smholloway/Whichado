Whichado::Application.routes.draw do

  get "vip/index"

  get "home/index"
  
  resources :notifications
  
  scope "/Austin" do
    resources :events
  end
  match 'Austin', :to => 'home#live', :as => :austin
  
  match 'NewYork', :to => 'home#coming', :as => :newyork  
  match 'Seattle', :to => 'home#coming', :as => :seattle
  match 'Houston', :to => 'home#coming', :as => :houston
  match 'Dallas', :to => 'home#coming', :as => :dallas
  match 'SanFrancisco', :to => 'home#coming', :as => :sanfrancisco
  match 'LosAngeles', :to => 'home#coming', :as => :losangeles
  match 'YourCity', :to => 'home#coming', :as => :yourcity

  root :to => "home#redirect"
  match 'about' => 'home#about', :as => :about
  match 'login' => 'home#login', :as => :login  
  
  devise_for :users

  # The priority is based upon order of creation:
  # first created -> highest priority.

  # Sample of regular route:
  #   match 'products/:id' => 'catalog#view'
  # Keep in mind you can assign values other than :controller and :action

  # Sample of named route:
  #   match 'products/:id/purchase' => 'catalog#purchase', :as => :purchase
  # This route can be invoked with purchase_url(:id => product.id)

  # Sample resource route (maps HTTP verbs to controller actions automatically):
  #   resources :products

  # Sample resource route with options:
  #   resources :products do
  #     member do
  #       get 'short'
  #       post 'toggle'
  #     end
  #
  #     collection do
  #       get 'sold'
  #     end
  #   end

  # Sample resource route with sub-resources:
  #   resources :products do
  #     resources :comments, :sales
  #     resource :seller
  #   end

  # Sample resource route with more complex sub-resources
  #   resources :products do
  #     resources :comments
  #     resources :sales do
  #       get 'recent', :on => :collection
  #     end
  #   end

  # Sample resource route within a namespace:
  #   namespace :admin do
  #     # Directs /admin/products/* to Admin::ProductsController
  #     # (app/controllers/admin/products_controller.rb)
  #     resources :products
  #   end
end
