class BirthdayMailer < ApplicationMailer
	default from: 'notifications@example.com'

  def birthday_email(user)
    @user = user
    mail(to: @user.email, subject: 'Happy Birthday')
  end
end
