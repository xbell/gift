Rails.application.routes.draw do

  get "/", to: "home#index", as: :home
  get "/given", to: "home#given", as: :given
  get "/received", to: "home#received", as: :received

  post "/given", to: "home#create_given"
  post "/received", to: "home#create_received"

  get "/given/edit/:id", to: "home#edit_given", as: :edit_given
  post "/given/edit/:id", to: "home#update_given", as: :update_given
  get "/received/edit/:id", to: "home#edit_received", as: :edit_received
  post "/received/edit/:id", to: "home#update_received", as: :update_received

  get "/given/:id", to: "home#delete_given", as: :delete_given
  get "/received/:id", to: "home#delete_received", as: :delete_received

  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  # You can have the root of your site routed with "root"
  # root 'welcome#index'

  # Example of regular route:
  #   get 'products/:id' => 'catalog#view'

  # Example of named route that can be invoked with purchase_url(id: product.id)
  #   get 'products/:id/purchase' => 'catalog#purchase', as: :purchase

  # Example resource route (maps HTTP verbs to controller actions automatically):
  #   resources :products

  # Example resource route with options:
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

  # Example resource route with sub-resources:
  #   resources :products do
  #     resources :comments, :sales
  #     resource :seller
  #   end

  # Example resource route with more complex sub-resources:
  #   resources :products do
  #     resources :comments
  #     resources :sales do
  #       get 'recent', on: :collection
  #     end
  #   end

  # Example resource route with concerns:
  #   concern :toggleable do
  #     post 'toggle'
  #   end
  #   resources :posts, concerns: :toggleable
  #   resources :photos, concerns: :toggleable

  # Example resource route within a namespace:
  #   namespace :admin do
  #     # Directs /admin/products/* to Admin::ProductsController
  #     # (app/controllers/admin/products_controller.rb)
  #     resources :products
  #   end
end
