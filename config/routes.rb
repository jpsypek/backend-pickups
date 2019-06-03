Rails.application.routes.draw do
  resources :user_events
  namespace :api do
    namespace :v1 do
      resources :users
      post '/login', to: 'auth#create'
      resources :events
    end
  end
end
