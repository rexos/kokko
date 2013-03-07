class Association < ActiveRecord::Base
  attr_accessible :exercise_id, :lesson_id
  belongs_to :lesson
  belongs_to :exercise
end
