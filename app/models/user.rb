class User < ActiveRecord::Base
  attr_accessible :username, :email, :password, :password_confirmation
  has_secure_password

  #before create methods
  before_create { |user| user.email = email.downcase }
  before_create :generate_token

  #email regex
  EMAIL_REGULAR_EXPRESSION = /\b[A-Z0-9._+-]+@[A-Z0-9.-]+\.[A-Z]{2,4}\b/i
  

  #validations
  validates :username, :presence => true, :uniqueness => true, :length => { :minimum => 5 }
  validates :email, :presence => true, :format => { :with => EMAIL_REGULAR_EXPRESSION }
  validates :password, :presence => true, :length => { minimum: 6 }, :on => :create
  validates_presence_of :password_confirmation, :on => :create


  #private methods
  private

  def generate_token
    self.token = SecureRandom.urlsafe_base64 
  end


end
