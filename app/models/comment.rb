# == Schema Information
#
# Table name: comments
#
#  id          :integer          not null, primary key
#  commenter   :integer
#  body        :text
#  feedback_id :integer
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

class Comment < ActiveRecord::Base
  belongs_to :feedback
  attr_accessible :body, :commenter

  validates_presence_of :body

end
