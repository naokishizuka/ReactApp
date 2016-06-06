Rails.application.routes.draw do
  namespace :api, { format: 'json' } do
    resources :comments
  end
  root 'home#index'
end
