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

  get 'landlord/become' => 'landlord/become'
  post 'landlord/register' => 'landlord/register'
  get 'landlord/properties' => 'landlord/properties'
end
