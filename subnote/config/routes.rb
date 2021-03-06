Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
      resources :users, only: [:index, :show, :create]
      resources :themes, only: [:index, :show]
      resources :notes, only: [:index, :show, :create, :update]
      namespace :auth do
        post 'login', to: 'auth#login'
        delete 'logout', to: 'auth#destroy'
      end
    end
  end
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  get "*path", :to => "home#index"
  get "", :to => "home#index"

end
