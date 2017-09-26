Rails.application.routes.draw do
  get 'bookings/new'

  get 'bookings/create'

 	resources :flights
 	resources :airports
 	root to: 'flights#index'
end
