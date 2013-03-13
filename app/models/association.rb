class Association < ActiveRecord::Base
  attr_accessible :exercise_id, :lesson_id, :repetitions

  #validations
  validates_presence_of :exercise_id, :lesson_id, :repetitions 
  
  #association relationships
  has_many :status
  belongs_to :lesson
  belongs_to :exercise

end
