Rails.application.routes.draw do
  get 'subscriptions/create'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  namespace :api do
    namespace :v1 do
      namespace :customer do
        resources :subscriptions, only: %i[index create update]
      end
    end
  end
end
