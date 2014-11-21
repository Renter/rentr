Rails.configuration.stripe = {
  :publishable_key => ENV['pk_test_hNt18sy1BemKhoBlmBotwOge'],
  :secret_key      => ENV['sk_live_MNPzNPyvtjBJIzYOPnVlg1TC']
}

Stripe.api_key = Rails.configuration.stripe[:sk_test_amiTBNb49xt2kPEHyKWXfST2]
