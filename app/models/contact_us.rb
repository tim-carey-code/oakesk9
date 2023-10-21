# frozen_string_literal: true

class ContactUs < MailForm::Base
  attribute :email
  attribute :name
  attribute :message
  attribute :subject

  def headers
    {
      subject: subject.to_s,
      to: 'sueoakesk9@gmail.com',
      email: email.to_s,
      name: name.to_s
    }
  end
end
