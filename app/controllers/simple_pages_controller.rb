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

  def thank_you
    @name = params[:name]
    @email = params[:email]
    @message = params[:message]
    ActionMailer::Base.mail(from: 'hello@ethnicsandsilver.com',
        to: @email,
        subject: "A new contact form message from #{@name}",
        body: @message).deliver_now
  end

end
