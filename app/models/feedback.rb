# == Schema Information
#
# Table name: feedbacks
#
#  id         :integer          not null, primary key
#  rating     :integer
#  body       :text
#  user_id    :integer
#  program_id :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Feedback < ActiveRecord::Base
  belongs_to :user
  belongs_to :program
  attr_accessible :body, :rating, :program_id
  before_create { |feedback| feedback.body = body.capitalize }

  validates_presence_of :body

end
