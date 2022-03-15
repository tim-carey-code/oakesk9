class ContactUs < MailForm::Base
  attribute :email
  attribute :name
  attribute :message
  attribute :subject

  def headers
    { 
      subject: "#{subject}",
      to: "disinhumepa@gmail.com",
      email: "#{email}",
      name: "#{name}" 
    }
  end
end
