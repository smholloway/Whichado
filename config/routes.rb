Whichado::Application.routes.draw do

  get "vip/index"

  get "home/index"
  
  resources :notifications
  
  scope "/Austin" do
    resources :events
  end
  match '/Austin', :to => 'home#live'
  
  match '/NewYork', :to => 'home#coming'
  match '/Seattle', :to => 'home#coming'
  match '/Houston', :to => 'home#coming'
  match '/Dallas', :to => 'home#coming'
  match '/SanFrancisco', :to => 'home#coming'
  match '/LosAngeles', :to => 'home#coming'   

  root :to => "home#redirect"
  
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
