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
#  user_id    :bigint
#
# Indexes
#
#  index_profiles_on_user_id  (user_id)
#
# Foreign Keys
#
#  fk_rails_...  (user_id => users.id)
#
class Profile < ApplicationRecord
    belongs_to :user
end
