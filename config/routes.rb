Rails.application.routes.draw do
	resources :bookings, only: [:new, :create, :show]
 	resources :flights
 	resources :airports
 	root to: 'flights#index'
end
