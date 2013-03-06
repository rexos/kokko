class Lesson < ActiveRecord::Base
  attr_accessible :title
  before_save {|lesson| lesson.title = title.capitalize}
end
