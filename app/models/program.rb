class Program < ActiveRecord::Base
  attr_accessible :description, :title
  before_save {|prog| prog.title = title.capitalize}
  before_save {|prog| prog.description = description.capitalize}
  
  validates_presence_of :title, :description
end
