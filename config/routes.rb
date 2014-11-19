require "monban/constraints/signed_in"
require "monban/constraints/signed_out"

Rails.application.routes.draw do
  resource :session, only: [:new, :create, :destroy]
  resources :users, only: [:new, :create]
<<<<<<< HEAD
  resources :locations, only: [:show, :create]
  resources :searches, only: [:index]
  resources :listings, only: [:show]
  resources :searches, only: [:index]
=======
<<<<<<< HEAD

=======
  resources :locations, only: [:show, :create]
  resources :searches, only: [:index]
  resources :listings, only: [:show]
  get "/maps" => "maps#show"
>>>>>>> 38e52c9... added google map api and maps controller to begin to include it.
>>>>>>> adds google maps api and maps controller
  constraints Monban::Constraints::SignedIn.new do
    root "dashboards#show", as: :dashboard
  end

  constraints Monban::Constraints::SignedOut.new do
    root "landings#show"
  end
end
