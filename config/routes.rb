Rails.application.routes.draw do
  resources :products
  resources :orders, only: [:index, :show, :create, :destroy]
  # Below line will map any request to get the about page to the about action of the simple_pages controller
  get 'simple_pages/about'
  get 'simple_pages/contact'

  get 'simple_pages/index'
  # Thanks to this routes.rb and below line, Rails will map requests to the root of the App to the to the landing_page action of the simple_pages controller
  root 'simple_pages#landing_page'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
