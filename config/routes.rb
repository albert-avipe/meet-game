Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  get 'static_pages/home'

  devise_scope :user do
    get     '/signin',    to: 'devise/sessions#new'
#                          as: :new_user_session
    post    '/signin',    to: 'devise/sessions#create'
#                          as: :user_session
    delete  '/signout',   to: 'devise/sessions#destroy'
#                          as: :destroy_user_session

    get     '/signup',    to: 'devise/registrations#new'
#                          as: :new_registration
    post    '/signup',    to: 'devise/registrations#create'
#                          as: :registration
  end
  devise_for :users
end
