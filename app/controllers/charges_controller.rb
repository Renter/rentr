class ChargesController < ApplicationController
  def new
  end

  def create
  @amount = 500

  customer = Stripe::Customer.create(
<<<<<<< HEAD
    :email => @email,
=======
    :email => 'example@stripe.com',
>>>>>>> bf4de282d128bddbb56b3b7be176f63df9010fe4
    :card  => params[:stripeToken]
  )

  charge = Stripe::Charge.create(
    :customer    => customer.id,
    :amount      => @amount,
    :description => 'Rails Stripe customer',
    :currency    => 'usd'
  )

  rescue Stripe::CardError => e
    flash[:error] = e.message
    redirect_to charges_path
  end
end

