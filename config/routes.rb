require "monban/constraints/signed_in"
require "monban/constraints/signed_out"



Rails.application.routes.draw do
  resource :session, only: [:new, :create, :destroy]
  resources :users, only: [:new, :create]
  resources :listings, only: [:new, :create, :index, :show]



  constraints Monban::Constraints::SignedIn.new do
    root "dashboards#directory", as: :dashboard
  end

  constraints Monban::Constraints::SignedOut.new do
    root "dashboards#directory"
  end
end










