class Lesson < ActiveRecord::Base
  belongs_to :program
  attr_accessible :title
end
