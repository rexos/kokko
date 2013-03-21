# == Schema Information
#
# Table name: programs
#
#  id          :integer          not null, primary key
#  title       :string(255)
#  description :text
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

class Program < ActiveRecord::Base
  attr_accessible :description, :title
  has_many :lessons, :dependent => :destroy
  before_save {|prog| prog.title = title.capitalize}
  before_save {|prog| prog.description = description.capitalize}
  
  validates_presence_of :title, :description
end
