class Relationship < ActiveRecord::Base
  attr_accessible :followed, :follower

  validates_presence_of :followed
  validates_presence_of :follower

end
