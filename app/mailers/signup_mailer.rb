class SignupMailer < ActionMailer::Base
  default from: "deadormi@info.com"

  def signup_mail(user)
    @user = user
    mail(:to => user.email, :subject => "Welcome to Kokko Gym #{@user.username.capitalize}!", :body => "Hey #{@user.username.capitalize}! What\s up?" )
  end
  
end
