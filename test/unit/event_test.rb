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

require 'test_helper'

class EventTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
