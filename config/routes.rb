Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  namespace :api do
    namespace :v1 do
      resources :products, only: [:index, :update, :create, :show] do
        resources :reviews
      end

      resources :auth
      resources :users, only: [:index, :update, :create]
    end
  end

end
