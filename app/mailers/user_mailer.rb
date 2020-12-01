class UserMailer < ApplicationMailer
  default from: "hello@ethnicsandsilver.com"


  def contact_form(email, name, message)
    @message = message
      mail(to: email,
        subject: 'A new contact form message from #{name}')
  end

end


# ActionMailer::Base.mail(from: 'hello@ethnicsandsilver.com',
#     to: @email,
#     subject: "A new contact form message from #{@name}",
#     body: @message).deliver_now
