class ItemMailer < ApplicationMailer
	  default from: 'youssef.elouatiq@gmail.com'


  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.item_mailer.item_edit_confirm.subject
  #
  def item_edit_confirm(user)
	@user = user
    mail to: @user.email, subject: "ToDo Thank u for editing Item bla bla ;-)"
  end
end
