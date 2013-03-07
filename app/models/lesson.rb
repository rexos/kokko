class Lesson < ActiveRecord::Base
  belongs_to :program

  before_save{|lesson| lesson.title = title.capitalize}

  has_many :associations
  has_many :exercises, through: :associations
  attr_accessible :title
end
