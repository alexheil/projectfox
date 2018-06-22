Rails.application.routes.draw do

  root 'static_pages#home'

  devise_for :users, controllers: { sessions: "users/sessions", passwords: "users/passwords", registrations: "users/registrations", confirmations: "users/confirmations",  unlocks: "users/unlocks"}

  devise_scope :user do
    get 'sign_out', to: 'users/sessions#destroy'
  end

  resources :cities, controller: 'cities/cities' do
    resources :places, controller: 'cities/places', except: :index do
      resources :pins, controller: 'pins/pins', only: [:create]
    end
    #resources :landmarks, controller: 'cities/landmarks', except: :index do
    #  resources :pins, controller: 'pins/pins', only: [:create]
    #end
  end
end
