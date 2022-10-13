require 'action_mailer'

ActionMailer::Base.delivery_method = :smtp
# ActionMailer::Base.default_content_type = "text/html"
ActionMailer::Base.smtp_settings = {
    address:              "smtp.gmail.com",
    port:                 587,
    user_name:            "demot3055@gmail.com",
    password:             "DemoTest@3055",
    authentication:       "plain",
    enable_starttls_auto: true  
  }

class AutomailerMailer < ApplicationMailer
    default from: 'demot3055@gmail.com'

  def task_created
    @task = params[:task]
    @url  = 'http://mail.google.com'
    mail(to: 'nachiketmore7@gmail.com', subject: 'New task created for you')
  end
end
