Rails.application.routes.draw do
  devise_for :admins, controllers: {
  sessions:      'admins/sessions',
  passwords:     'admins/passwords',
  registrations: 'admins/registrations'
}

 devise_for :customers
  root to:'homes#top'

 resource :reservationcs
  get 'reservationcs/index'
  get 'reservationcs/new'
  get 'reservationcs/show'
  get 'reservationcs/verification'
end
