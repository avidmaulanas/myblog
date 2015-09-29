Rails.application.routes.draw do
  get 'dashboard' => 'dashboard#index'

  get 'comments/create'

  root 'articles#index'

  devise_for  :users, skip: [:sessions, :registrations]
  resources   :users, except: [:show, :edit]

  as :user do
    # devise/sessions
    get     'login',            to: 'devise/sessions#new',      as: :new_user_session
    post    'login' ,           to: 'devise/sessions#create',   as: :user_session
    delete  'logout',           to: 'devise/sessions#destroy',  as: :destroy_user_session

    # devise/registrations
    get     'signup',           to: 'devise/registrations#new',     as: :new_user_registration
    post    'signup',           to: 'devise/registrations#create',  as: :user_registration
    delete  'profile/account',  to: 'devise/registrations#destroy'

    # users
    get     'profile',          to: 'users#show'
    get     'profile/edit',     to: 'users#edit'
    delete  'profile/avatar',   to: 'users#remove_avatar'
    get     'profile/account',  to: 'users#account'
    patch   'profile/account',  to: 'users#account_update'
    get     'profile/password', to: 'users#password'
    patch   'profile/password', to: 'users#password_update'
  end

  post 'rate' => 'articles#rate'

  resources :articles do
    resources :comments
    resources :abuse_reports, path: 'abuse-report'

    member do
      put "like", to: "articles#upvote"
      put "dislike", to: "articles#downvote"
    end
  end

  get 'tagged' => 'articles#tagged', :as => 'tagged'


  if Rails.env.development?
    mount LetterOpenerWeb::Engine, at: "/mail"
  end
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
