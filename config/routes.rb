Rails.application.routes.draw do
  devise_for :admins, controllers: {
  sessions:      'admins/sessions',
  passwords:     'admins/passwords',
  registrations: 'admins/registrations'
}

  devise_for :customers, controllers: {
  sessions:      'customer/sessions',
  passwords:     'customer/passwords',
  registrations: 'customer/registrations'
}

root to:'homes#top'
 namespace :customers, path: "" do
  resources :customers, only: [:show]
  resources :courses, only: [:show,:index]
   get 'reservationcs/verification' => 'reservationcs#confirm'
   post 'reservationcs/verification' => 'reservationcs#velification'
  resources :reservationcs, only: [:new, :create, :index, :show, :update]
 end

 namespace :admins  do
 resources :customers, only: [:index,:show, :edit,:update]
 resources :courses, only: [:new, :create, :index, :show, :destroy]
 resources :products, only: [:index,:show, :edit,:update, :new, :create]
 resources :reservationcs, only: [:index, :show, :update]
  get 'reservationcs/index'
  get 'reservationcs/new'
  get 'reservationcs/show'
  get 'reservationcs/verification'

 end
end
