Rails.application.routes.draw do
 	resources :flights
 	resources :airports
 	root to: 'flights#index'
end
