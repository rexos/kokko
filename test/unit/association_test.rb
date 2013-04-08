# == Schema Information
#
# Table name: associations
#
#  id          :integer          not null, primary key
#  lesson_id   :integer
#  exercise_id :integer
#  repetitions :text
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

require 'test_helper'

class AssociationTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
