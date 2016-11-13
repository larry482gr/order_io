class ApplicationMailer < ActionMailer::Base
  default from: 'no-reply@order.io'
  layout 'mailer'
end
