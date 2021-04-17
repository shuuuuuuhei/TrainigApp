# == Schema Information
#
# Table name: muscles
#
#  id          :bigint           not null, primary key
#  description :text             not null
#  name        :string
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#
require 'test_helper'

class MuscleTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
