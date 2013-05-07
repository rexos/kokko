# == Schema Information
#
# Table name: events
#
#  id         :integer          not null, primary key
#  start      :datetime
#  end        :datetime
#  title      :string(255)
#  body       :text
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Event < ActiveRecord::Base
  attr_accessible :body, :end, :start, :title
  before_save { |event| event.start = start + 2.hours }
  before_save { |event| event.end += 2.hours }
  belongs_to :program

  validates_presence_of :body, :end, :start, :title

end
