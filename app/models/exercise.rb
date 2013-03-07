class Exercise < ActiveRecord::Base
  attr_accessible :description, :difficulty, :name
  has_many :associations
  has_many :lessons, through: :associations
  before_save{|ex| ex.name = name.capitalize}

  validates :name, :presence => true, length: {:minimum => 4}
  validates :description, :presence => true
  validates_presence_of :difficulty
  
end
