class Lesson < ActiveRecord::Base
  belongs_to :program
  has_many :exercises
  attr_accessible :title
end
