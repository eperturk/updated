Updated::Application.routes.draw do
  get "user_sessions/new"

  get "user_sessions/create"

  get "user_sessions/destroy"

  resources :users
  resources :user_sessions
  resources :users

get 'login' => 'user_sessions#new', :as => :login
post 'logout' => 'user_sessions#destroy', :as => :logout


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
  resources :pages do 
    collection do 
      get 'advisors'
      get 'client_resources'
      get 'contact'
      get 'programs'
      get 'packages'
      get 'testimonials'
      get 'track_record'
      get 'approach'
      get 'background'
      get 'visits'
      get 'cqa_history'
    end
  end

  # match '/pages/pages/advisors' => 'pages#advisors'
  # match '/pages/pages/client_resources' => 'pages#client_resources'
  # match '/pages/pages/contact' => 'pages#contact' 
  # match '/pages/pages/programs_services' => 'pages#'   
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
  root :to => 'pages#home'

  # See how all your routes lay out with "rake routes"

  # This is a legacy wild controller route that's not recommended for RESTful applications.
  # Note: This route will make all actions in every controller accessible via GET requests.
  # match ':controller(/:action(/:id))(.:format)'
end
