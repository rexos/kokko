class Status < ActiveRecord::Base
  
  attr_accessible :association_id, :user_id
  
  belongs_to :user
  belongs_to :association
  
end
