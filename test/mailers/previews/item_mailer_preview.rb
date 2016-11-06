# Preview all emails at http://localhost:3000/rails/mailers/item_mailer
class ItemMailerPreview < ActionMailer::Preview

  # Preview this email at http://localhost:3000/rails/mailers/item_mailer/item_edit_confirm
  def item_edit_confirm
    ItemMailer.item_edit_confirm
  end

end
