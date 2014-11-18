require "monban/constraints/signed_in"
require "monban/constraints/signed_out"



Rails.application.routes.draw do
  resource :session, only: [:new, :create, :destroy]
  resources :users, only: [:new, :create]


  constraints Monban::Constraints::SignedIn.new do
<<<<<<< HEAD
    root "dashboards#show", as: :dashboard
  end

  constraints Monban::Constraints::SignedOut.new do
    root "landings#show"
=======
    root "dashboards#directory", as: :dashboard
  end

  constraints Monban::Constraints::SignedOut.new do
    root "dashboards#directory"
>>>>>>> c9e7cbf676601e0ecb572f78b175a78adaa849cc
  end
end










