# == Schema Information
#
# Table name: associations
#
#  id          :integer          not null, primary key
#  lesson_id   :integer
#  exercise_id :integer
#  repetitions :text
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

class Association < ActiveRecord::Base
  attr_accessible :exercise_id, :lesson_id, :repetitions

  #validations
  validates_presence_of :exercise_id, :lesson_id, :repetitions 
  
  #association relationships
  has_many :status
  has_many :users, :through => :status
  belongs_to :lesson
  belongs_to :exercise

end
