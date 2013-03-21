# == Schema Information
#
# Table name: lessons
#
#  id         :integer          not null, primary key
#  title      :string(255)
#  program_id :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Lesson < ActiveRecord::Base
  belongs_to :program

  before_save{|lesson| lesson.title = title.capitalize}

  has_many :associations, :dependent => :destroy
  has_many :exercises, through: :associations
  attr_accessible :title
end
