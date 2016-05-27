class DevInterceptor
  def self.delivering_email(message)

    # Add the original recipient's name to the subject line
    message.subject = "[#{message.to}] #{message.subject}"

    # Redirect the email to your email address
    message.to = ['escully82@gmail.com']

  end
end
