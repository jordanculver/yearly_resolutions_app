YearlyResolutionsApp::Application.routes.draw do
  resources :categories
  resources :resolutions

  root :to => "home#index"

  devise_for :users, controllers: {registrations: :registrations, sessions: :sessions}

  resources :users do
    resources :goals
  end
end
