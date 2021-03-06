# == Schema Information
#
# Table name: users
#
#  id              :integer          not null, primary key
#  username        :string(255)
#  email           :string(255)
#  password_digest :string(255)
#  token           :string(255)
#  online          :boolean          default(FALSE)
#  created_at      :datetime         not null
#  updated_at      :datetime         not null
#  role            :string(255)      default("user")
#  first_name      :string(255)
#  second_name     :string(255)
#  where           :string(255)
#  my_training_id  :integer
#

class User < ActiveRecord::Base
  attr_accessible :username, :email, :password, :password_confirmation, :role, :first_name, :second_name, :where, :password_digest, :my_training_id, :online
  has_secure_password

  #user relationships
  has_many :statuses
  has_many :feedbacks, :dependent => :destroy
  has_many :associations, :through => :status
  has_many :messages, :foreign_key => :to, :dependent => :destroy
  has_many :flash_messages

  #before create/update methods
  before_create { |user| user.email = email.downcase }
  before_create :generate_token
  before_create { |user| user.username = username.downcase }
  #before_update {|user| user.first_name = first_name.capitalize}
  #before_update {|user| user.second_name = second_name.capitalize}
  #before_update {|user| user.where = where.capitalize}

  #email regex
  EMAIL_REGULAR_EXPRESSION = /\b[A-Z0-9._+-]+@[A-Z0-9.-]+\.[A-Z]{2,4}\b/i


  #validations
  validates :username, :presence => true, :uniqueness => true, :length => { :minimum => 5 }
  validates :email, :presence => true, :uniqueness => true, :format => { :with => EMAIL_REGULAR_EXPRESSION }
  validates :password, :presence => true, :length => { minimum: 6 }, :on => :create
  validates_presence_of :password_confirmation, :on => :create

  #private methods
  private

  def generate_token
    self.token = SecureRandom.urlsafe_base64
  end


end
