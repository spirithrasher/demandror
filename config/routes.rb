Rails.application.routes.draw do

  devise_scope :user do
    # Redirests signing out users back to sign-in
    get '/login' => 'devise/sessions#new'
    get '/logout' => 'devise/sessions#destroy'
  end

  devise_for :users
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"

  root to: "dashboard#index"
end
