require "monban/constraints/signed_in"
require "monban/constraints/signed_out"

Rails.application.routes.draw do
  resource :session, only: [:new, :create, :destroy]
  resources :users, only: [:new, :create]
  resources :locations, only: [:show, :create]
  resources :searches, only: [:index]
  resources :maps, only: [:show]
  resources :charges
  resources :listings, only: [:new, :create, :index, :show, :destroy] do
    resources :date_ranges, only: [:new, :create]
  end

  constraints Monban::Constraints::SignedIn.new do
    root "dashboards#show", as: :dashboard
  end

  constraints Monban::Constraints::SignedOut.new do
    root "landings#show"
  end
end
