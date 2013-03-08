class Association < ActiveRecord::Base
  attr_accessible :exercise_id, :lesson_id, :repetitions

  validates_presence_of :exercise_id, :lesson_id, :repetitions
  
  belongs_to :lesson
  belongs_to :exercise
end
