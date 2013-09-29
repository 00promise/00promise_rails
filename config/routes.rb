Promise::Application.routes.draw do
  devise_for :users
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)

  namespace :api do
    devise_scope :user do
      post "users/sign_up", to: "users/registrations#create"
      post "users/sign_in", to: "users/sessions#create"
      post "users/sign_out", to: "users/sessions#destroy"
    end

    get "district/sidos"
    get "district/sidos/:id/sigungus", to: "district#sigungus"
    get "district/search", to: "district#search"

    get "elections", to: "elections#index"
    get "elections/:id/politicians", to: "elections#politicians"

    get "manifestos/daily"
    get "manifestos/:id", to: "manifestos#show"
    get "manifestos/politician/:id", to: "manifestos#politician"

    get "parties", to: "parties#index"
    get "parties/:id/politicians", to: "parties#politicians"

    get "politicians/search"
    get "politicians/my_district/:id", to: "politicians#my_district"
    get "politicians/:id", to: "politicians#show"

    post "ratings/update"
    post "ratings/destroy"

    get "replies/manifesto/:id", to: "replies#manifesto"
    post "replies/manifesto/:id", to: "replies#manifesto"
    post "replies/create"
    post "replies/destroy"
    # post "replies/report"

    post "reply_evaluations/create"
  end

  resources :parties
  resources :positions
  resources :manifestos
  resources :politicians
  resources :ratings
  resources :replies
  resources :reply_evaluations


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
