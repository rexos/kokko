class Exercise < ActiveRecord::Base
  attr_accessible :description, :difficulty, :name, :video_url
  has_many :associations, :dependent => :destroy
  has_many :lessons, through: :associations
  before_save{|ex| ex.name = name.capitalize}

  validates :name, :presence => true, length: {:minimum => 4}
  validates :description, :presence => true
  validates_presence_of :difficulty
  
end
