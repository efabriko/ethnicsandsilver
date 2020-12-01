class UserMailer < ApplicationMailer
  default from: "hello@ethnicsandsilver.com"


  def contact_form(email, name, message)
    @message = message
      mail(to: email,
        subject: "A new contact form message from #{name}")
  end

end
