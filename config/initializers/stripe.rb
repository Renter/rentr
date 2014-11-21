Rails.configuration.stripe = {
<<<<<<< HEAD
  :publishable_key => ENV['pk_test_hNt18sy1BemKhoBlmBotwOge'],
  :secret_key      => ENV['sk_live_MNPzNPyvtjBJIzYOPnVlg1TC']
}

Stripe.api_key = Rails.configuration.stripe[:sk_test_amiTBNb49xt2kPEHyKWXfST2]
=======
  :publishable_key => ENV['PUBLISHABLE_KEY'],
  :secret_key      => ENV['SECRET_KEY']
}

Stripe.api_key = Rails.configuration.stripe[:secret_key]
>>>>>>> bf4de282d128bddbb56b3b7be176f63df9010fe4
