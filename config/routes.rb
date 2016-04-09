Rails.application.routes.draw do
  get 'dashboard' => 'dashboard#index'

  get 'comments/create'

  root 'articles#index'

  devise_for  :users, skip: [:sessions, :registrations]
  resources   :users, except: [:edit]

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

  

  resources :articles do
    resources :comments
    resources :abuse_reports, path: 'abuse-report'

    member do
      put   "like",             to: "articles#upvote",   as: :like
      put   "dislike",          to: "articles#downvote", as: :dislike      
    end

    collection do
      post  "rate",                   to: 'articles#rate',   as: :rate
      get   "tag/:tag(/page/:page)",  to: 'articles#tagged', as: :tagged
      get   "page/:page",             to: 'articles#index'
    end
  end

  if Rails.env.development?
    mount LetterOpenerWeb::Engine, at: "/mail"
  end
end
