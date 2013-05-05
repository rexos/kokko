class Event < ActiveRecord::Base
  attr_accessible :body, :end, :start, :title
  before_save { |event| event.start = start + 2.hours }
  before_save { |event| event.end += 2.hours }
  validates_presence_of :body, :end, :start, :title

end
