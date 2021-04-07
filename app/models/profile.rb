# == Schema Information
#
# Table name: profiles
#
#  id         :bigint           not null, primary key
#  account    :string
#  age        :integer
#  gender     :integer
#  height     :float
#  name       :string
#  weight     :float
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
class Profile < ApplicationRecord
    belongs_to :user
end
