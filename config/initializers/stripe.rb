if Rails.env.production?
  Rails.configuration.stripe = {
    publishable_key: ENV['STRIPE_PUBLISHABLE_KEY'],
    secret_key: ENV['STRIPE_SECRET_KEY']
  }
else
  Rails.configuration.stripe = {
    publishable_key: 'pk_test_51I3XG4Kl4PmL9r9nvWtYp0DrYGjWjSjr4NMKik4vZiKYIKIuToyV5eu1WbxE7oTrdN3m1VyIwqM4NRj5r86ZbRxx007qCZlVwP',
    secret_key: 'sk_test_51I3XG4Kl4PmL9r9nm2rE3fxpLZaEu3MXbxSTaBZDjZvrqP2wyv3TRcv2TXyHkhxhe77ctb8NuKCyWFYALxGeYIzm00JiNRxcOT'
  }
end

Stripe.api_key = Rails.configuration.stripe[:secret_key]
