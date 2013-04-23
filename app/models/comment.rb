class Comment < ActiveRecord::Base
  belongs_to :feedback
  attr_accessible :body, :commenter

  validates_presence_of :body

end
