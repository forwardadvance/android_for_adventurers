SpaceJavascript::Application.routes.draw do

  mount RailsAdmin::Engine => '/admin', :as => 'rails_admin'
  root "take_me_back#index"

  resources :people
  get "signup" => "people#new", :as => :signup

  get "login" => "logins#new", :as => :login
  post "login" => "logins#create"
  get "logout" => "logins#destroy", :as => :logout

  get "splash" => "splash#show", :as => :splash
  get "take_me_back" => "take_me_back#index", :as => :take_me_back


  get "map" => "map#show", :as => :map

  resources :my_sections, :only => [:edit, :update], :controller => :sections
  resources :my_exercises, :only => [:edit, :update], :controller => :exercises
  get "/:section_slug/:exercise_slug" => "exercises#show", :as => :exercise


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

  # Example resource route within a namespace:
  #   namespace :admin do
  #     # Directs /admin/products/* to Admin::ProductsController
  #     # (app/controllers/admin/products_controller.rb)
  #     resources :products
  #   end
end
