# == Schema Information
#
# Table name: relationships
#
#  id         :integer          not null, primary key
#  follower   :integer
#  followed   :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Relationship < ActiveRecord::Base
  attr_accessible :followed, :follower

  validates_presence_of :followed
  validates_presence_of :follower

end
