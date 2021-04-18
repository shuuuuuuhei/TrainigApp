# == Schema Information
#
# Table name: trainingmenu_muscles
#
#  id               :bigint           not null, primary key
#  created_at       :datetime         not null
#  updated_at       :datetime         not null
#  muscle_id        :bigint
#  training_menu_id :bigint
#
# Indexes
#
#  index_trainingmenu_muscles_on_muscle_id         (muscle_id)
#  index_trainingmenu_muscles_on_training_menu_id  (training_menu_id)
#
# Foreign Keys
#
#  fk_rails_...  (muscle_id => muscles.id)
#  fk_rails_...  (training_menu_id => training_menus.id)
#
require 'test_helper'

class TrainingmenuMuscleTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
