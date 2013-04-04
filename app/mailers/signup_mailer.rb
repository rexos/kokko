# -*- coding: undecided -*-
class SignupMailer < ActionMailer::Base
  default from: "deadormi@info.com"
  default body: " Hey #{@user.username.capitalze}! Lo staff di Kokko Social Gym ti da il benvenuto nella comunità! Speriamo che ti possa divrtire utilizzando la nostra aplpicazione  e rimanendo in contatto con i tuoi amici!"

  def signup_mail(user)
    @user = user
    mail(:to => user.email, :subject => "Benvenuto alla Kokko Gym #{@user.username.capitalize}!" )
  end
  
end
