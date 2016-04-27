Rails.application.routes.draw do
  root 'pages#home'

  devise_for :users,
             path: '',
             path_names: {sign_in: 'login', sign_out: 'logout', edit: 'profile'},
             controllers: {
                 omniauth_callbacks: 'omniauth_callbacks',
                 registrations: 'registrations'
             }


  resources :properties
  resources :photos
  resources :users, only: :show

  resources :screening_criterias, only: [:edit, :update, :destroy]

  get 'landlord/become' => 'landlord/become'
  post 'landlord/register' => 'landlord/register'
  get 'landlord/properties' => 'landlord/properties'

  namespace :landlord do
    resources :screening_criterias, only: [:edit, :update, :destroy]
  end

end
