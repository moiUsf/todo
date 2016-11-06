require 'test_helper'

class ItemMailerTest < ActionMailer::TestCase
  test "item_edit_confirm" do
    mail = ItemMailer.item_edit_confirm
    assert_equal "Item edit confirm", mail.subject
    assert_equal ["to@example.org"], mail.to
    assert_equal ["from@example.com"], mail.from
    assert_match "Hi", mail.body.encoded
  end

end
