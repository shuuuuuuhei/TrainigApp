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
    has_many :trainingmenu_muscles
    has_many :training_menu, through: :trainingmenu_muscles, dependent: :destroy
    validates :name, uniqueness: true
end
