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
class Muscle < ApplicationRecord
    belongs_to :training_menu
    validates :name, uniqueness: true
end
