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
    has_many :trainingmenu_muscles
    has_many :muscles, through: :trainingmenu_muscles, dependent: :destroy


    def submit_muscle(muscle_name)
        #部位が登録済みか判定
        if( Muscle.where(name: muscle_name).first.present? && self.muscles.where(name: muscle_name).first.nil? )
            trainingmenu_muscles.create!(muscle_id: Muscle.where( name: muscle_name).first.id)
        else
            muscles.create!(name: muscle_name, description: "これは#{muscle_name}です")
        end
    end

end