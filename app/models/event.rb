class Event < ActiveRecord::Base
  attr_accessible :lesson_id, :start_time, :training_id
end
