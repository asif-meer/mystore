# == Route Map (Updated 2013-02-03 03:54)
#
#              new_user_session GET    /users/sign_in(.:format)                           devise/sessions#new
#                  user_session POST   /users/sign_in(.:format)                           devise/sessions#create
#          destroy_user_session DELETE /users/sign_out(.:format)                          devise/sessions#destroy
#                 user_password POST   /users/password(.:format)                          devise/passwords#create
#             new_user_password GET    /users/password/new(.:format)                      devise/passwords#new
#            edit_user_password GET    /users/password/edit(.:format)                     devise/passwords#edit
#                               PUT    /users/password(.:format)                          devise/passwords#update
#      cancel_user_registration GET    /users/cancel(.:format)                            devise/registrations#cancel
#             user_registration POST   /users(.:format)                                   devise/registrations#create
#         new_user_registration GET    /users/sign_up(.:format)                           devise/registrations#new
#        edit_user_registration GET    /users/edit(.:format)                              devise/registrations#edit
#                               PUT    /users(.:format)                                   devise/registrations#update
#                               DELETE /users(.:format)                                   devise/registrations#destroy
#                    home_index GET    /home/index(.:format)                              home#index
#                          root        /                                                  home#index
#                     suppliers GET    /suppliers(.:format)                               suppliers#index
#                               POST   /suppliers(.:format)                               suppliers#create
#                  new_supplier GET    /suppliers/new(.:format)                           suppliers#new
#                 edit_supplier GET    /suppliers/:id/edit(.:format)                      suppliers#edit
#                      supplier GET    /suppliers/:id(.:format)                           suppliers#show
#                               PUT    /suppliers/:id(.:format)                           suppliers#update
#                               DELETE /suppliers/:id(.:format)                           suppliers#destroy
#             product_purchases GET    /products/:product_id/purchases(.:format)          purchases#index
#                               POST   /products/:product_id/purchases(.:format)          purchases#create
#          new_product_purchase GET    /products/:product_id/purchases/new(.:format)      purchases#new
#         edit_product_purchase GET    /products/:product_id/purchases/:id/edit(.:format) purchases#edit
#              product_purchase GET    /products/:product_id/purchases/:id(.:format)      purchases#show
#                               PUT    /products/:product_id/purchases/:id(.:format)      purchases#update
#                               DELETE /products/:product_id/purchases/:id(.:format)      purchases#destroy
#                      products GET    /products(.:format)                                products#index
#                               POST   /products(.:format)                                products#create
#                   new_product GET    /products/new(.:format)                            products#new
#                  edit_product GET    /products/:id/edit(.:format)                       products#edit
#                       product GET    /products/:id(.:format)                            products#show
#                               PUT    /products/:id(.:format)                            products#update
#                               DELETE /products/:id(.:format)                            products#destroy
#       query_logged_exceptions POST   /logged_exceptions/query(.:format)                 logged_exceptions#query
# destroy_all_logged_exceptions POST   /logged_exceptions/destroy_all(.:format)           logged_exceptions#destroy_all
#        feed_logged_exceptions GET    /logged_exceptions/feed(.:format)                  logged_exceptions#feed
#             logged_exceptions GET    /logged_exceptions(.:format)                       logged_exceptions#index
#                               POST   /logged_exceptions(.:format)                       logged_exceptions#create
#          new_logged_exception GET    /logged_exceptions/new(.:format)                   logged_exceptions#new
#         edit_logged_exception GET    /logged_exceptions/:id/edit(.:format)              logged_exceptions#edit
#              logged_exception GET    /logged_exceptions/:id(.:format)                   logged_exceptions#show
#                               PUT    /logged_exceptions/:id(.:format)                   logged_exceptions#update
#                               DELETE /logged_exceptions/:id(.:format)                   logged_exceptions#destroy
#

Store::Application.routes.draw do
  devise_for :users

  get "home/index"
  root :to => 'home#index' 
  resources :suppliers

  resources :products do
    resources :purchases
  end 

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

  # You can have the root of your site routed with "root"
  # just remember to delete public/index.html.
  # root :to => 'welcome#index'

  # See how all your routes lay out with "rake routes"

  # This is a legacy wild controller route that's not recommended for RESTful applications.
  # Note: This route will make all actions in every controller accessible via GET requests.
  # match ':controller(/:action(/:id))(.:format)'
end
