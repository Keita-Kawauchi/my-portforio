Rails.application.routes.draw do
  devise_for :admins, controllers: {
  sessions:      'admins/sessions',
  passwords:     'admins/passwords',
  registrations: 'admins/registrations'
}

  devise_for :customers, controllers: {
  sessions:      'customers/sessions',
  passwords:     'customers/passwords',
  registrations: 'customers/registrations'
}

root to:'homes#top'
 namespace :customers, path: "" do
  resources :customers, only: [:show]
  resources :courses, only: [:show,:index]

   get 'reservationcs/thanx' => 'reservationcs#thanx'
   post 'reservationcs/verification' => 'reservationcs#confirm'
  resources :reservationcs, only: [:new, :create, :index, :show, :update, :edit, :destroy]
 end

 namespace :admins  do
 resources :customers, only: [:index,:show, :edit,:update]
 resources :courses, only: [:new, :create, :index, :show, :destroy, :edit]
 resources :products, only: [:index,:show, :edit,:update, :new, :create]
 resources :reservationcs, only: [:index, :show, :update]
  get 'reservationcs/new'
  get 'reservationcs/verification'

 end
end
