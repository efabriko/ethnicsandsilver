class SimplePagesController < ApplicationController
  def index
  end

  def landing_page
    products = Product.all
    if products.size <= 3
      @products = Product.order("created_at desc").where.not(image_url: nil).limit(3)
    else
      @products = Product.order("created_at desc").where.not(image_url: nil).limit(5)
    end
  end
end
