# -*- coding: undecided -*-
class SignupMailer < ActionMailer::Base
  default from: "deadormi@info.com"

  def signup_mail(user)
    @user = user
    mail(:to => user.email, :subject => "Benvenuto alla Kokko Gym #{@user.username.capitalize}!" )
  end
  
end
