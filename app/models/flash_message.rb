class FlashMessage < ActiveRecord::Base
  attr_accessible :body, :from, :to, :read
end
