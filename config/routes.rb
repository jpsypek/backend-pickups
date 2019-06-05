Rails.application.routes.draw do

  namespace :api do
    namespace :v1 do
      resources :events
      resources :users
      post '/login', to: 'auth#create'
      resources :user_events
    end
  end
end
