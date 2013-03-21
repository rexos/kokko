# == Schema Information
#
# Table name: exercises
#
#  id          :integer          not null, primary key
#  name        :string(255)
#  difficulty  :string(255)
#  description :text
#  video_url   :string(255)
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

require 'test_helper'

class ExerciseTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
