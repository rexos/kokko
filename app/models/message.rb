# == Schema Information
#
# Table name: messages
#
#  id         :integer          not null, primary key
#  body       :text
#  from       :integer
#  to         :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Message < ActiveRecord::Base
  attr_accessible :body, :from, :to, :read

  belongs_to :user

  validates_presence_of :to
  validates_presence_of :body

end
