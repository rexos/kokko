class Feedback < ActiveRecord::Base
  belongs_to :user
  belongs_to :program
  attr_accessible :body, :rating, :program_id
  before_create { |feedback| feedback.body = body.capitalize }

  validates_presence_of :body

end
