# == Schema Information
#
# Table name: userdietrecords
#
#  id         :integer          not null, primary key
#  user_id    :integer
#  diet_id    :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Userdietrecord < ApplicationRecord
  belongs_to :user
  belongs_to :diet
end
