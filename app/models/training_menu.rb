# == Schema Information
#
# Table name: training_menus
#
#  id          :bigint           not null, primary key
#  description :text             not null
#  title       :string           not null
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#
class TrainingMenu < ApplicationRecord
    has_many :muscles, dependent: :destroy
end
