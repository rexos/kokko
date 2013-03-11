class SignupMailer < ActionMailer::Base
  default from: "deadormi@info.com"

  def signup_mail(user)
    @user = user
    mail(:to => user.email, :subject => "Welcome to Kokko Gym!")
  end
  
end
