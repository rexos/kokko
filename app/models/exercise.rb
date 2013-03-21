# == Schema Information
#
# Table name: exercises
#
#  id          :integer          not null, primary key
#  name        :string(255)
#  difficulty  :string(255)
#  description :text
#  video_url   :string(255)
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

class Exercise < ActiveRecord::Base
  attr_accessible :description, :difficulty, :name, :video_url
  has_many :associations, :dependent => :destroy
  has_many :lessons, through: :associations
  before_save{|ex| ex.name = name.capitalize}

  validates :name, :presence => true, length: {:minimum => 4}
  validates :description, :presence => true
  validates_presence_of :difficulty
  
def code
  self.video_url.split('=').last if self.video_url
end

end
