# == Schema Information
#
# Table name: statuses
#
#  id             :integer          not null, primary key
#  user_id        :integer
#  association_id :integer
#  created_at     :datetime         not null
#  updated_at     :datetime         not null
#

class Status < ActiveRecord::Base
  
  attr_accessible :association_id, :user_id
  
  belongs_to :user
  belongs_to :association
  
end
