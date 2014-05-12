Rails.application.routes.draw do
root "signups#new"
resources :signups
end
