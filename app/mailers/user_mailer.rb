class UserMailer < ApplicationMailer
  default from: "hello@ethnicsandsilver.com"


  def contact_form(email, name, message)
    @message = message
      mail(to: email,
        subject: "A new contact form message from #{name}")
  end

  def welcome(user)
    @appname = "Ethnics & Silver"
    mail(to: user.email,
      subject: "Welcome to #{@appname}!")
  end

end
