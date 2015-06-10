class NotificationMailer < ActionMailer::Base
  default from: "noreply@watzupap.com"

  def comment_added
  	mail(to: "ptelerez1@gmail.com", subject: "A comment has been added to you place")
  end
end
