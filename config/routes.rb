Rails.application.routes.draw do
  resources :recipient_lists
  mount RailsAdmin::Engine => 'admin', as: 'rails_admin'
  devise_for :users
  root to: "home#index"

  # devise_for :users, controllers: {
  #   sessions: 'users/sessions',
  #   registrations: 'users/registrations'
  # }

  # resource :users, only: [:edit] do
  #   resource :profile, except: [:index], controller: 'users/profile' do
  #     member do
  #       put :update
  #     end
  #   end
  #   collection do
  #     put 'update_password'
  #   end
  # end
  resources :campaigns
  resources :emails

end
