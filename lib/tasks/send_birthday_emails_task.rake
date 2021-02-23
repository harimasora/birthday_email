desc 'Send birthday emails'
task send_birthday_emails: :environment do
	# Get a list of users who want to get email and the birthday is today
	users = Consent.find_by(key: 'email').users.today_birthday

  users.each do |user|
    parsed_locale = user.locale
    I18n.locale = I18n.available_locales.map(&:to_s).include?(parsed_locale) ? parsed_locale : 'en'
    BirthdayMailer.birthday_email(user).deliver_later
  end
end
