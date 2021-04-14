# == Schema Information
#
# Table name: muscles
#
#  id               :bigint           not null, primary key
#  description      :text             not null
#  name             :string           not null
#  created_at       :datetime         not null
#  updated_at       :datetime         not null
#  training_menu_id :bigint
#
# Indexes
#
#  index_muscles_on_training_menu_id  (training_menu_id)
#
# Foreign Keys
#
#  fk_rails_...  (training_menu_id => training_menus.id)
#
class Muscle < ApplicationRecord
    belongs_to :training_menus
end
