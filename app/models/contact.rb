class Contact < MailForm::Base
  attribute :school_information
  attribute :name_teacher
	attribute :email, validate => /\A([\w\.%\+\-]+)@([\w\-]+\.)+([\w]{2,})\z/i
  attribute :phone
  attribute :class_information
  attribute :motivation

  attribute :course
  attribute :course_date
	attribute :nickname, captcha: true


  def headers
    {
      subject: "Neue Anmeldung für '#{course}'",
      to: "barbara.schumacher@bluewin.ch", # barbara.schumacher@bluewin.ch
      from: %("#{name_teacher}" <#{email}>)
    }
  end

end