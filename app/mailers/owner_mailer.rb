class OwnerMailer < ApplicationMailer

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.owner_mailer.message.subject
  #
  def message_received(name, phone, email, object, city, content)
    @name = name
    @phone = phone
    @email = email
    @object = object
    @city = city
    @content = content

    mail to: "un.instant.pour.soi.esthetique@gmail.com"
  end
end
