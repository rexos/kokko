class FlashMessage < ActiveRecord::Base
  belongs_to :user
  belongs_to :lesson
  attr_accessible :lesson_id
  attr_accessible :body
end
