# == Schema Information
#
# Table name: programs
#
#  id          :integer          not null, primary key
#  title       :string(255)
#  description :text
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#  difficulty  :string(255)
#

class Program < ActiveRecord::Base
  attr_accessible :description, :title, :difficulty
  has_many :lessons, :dependent => :destroy
  has_many :feedbacks, :dependent => :destroy
  before_save {|prog| prog.title = title.capitalize}
  before_save {|prog| prog.description = description.capitalize}
  
  validates_presence_of :title, :description
end
