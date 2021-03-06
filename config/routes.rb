Rails.application.routes.draw do

  LOCALES = /en|pt/

  scope "(:locale)", :locale => LOCALES do
    resources :rooms
    resources :users
  end

  resource :confirmation, :only => [:show]

  resource :user_sessions, :only => [:create, :new, :destroy]

  get '/:locale' => 'home#index', :locale => LOCALES
  root 'home#index'
end
