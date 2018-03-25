# == Schema Information
#
# Table name: usertipdietrecords
#
#  id         :integer          not null, primary key
#  user_id    :integer
#  tipdiet_id :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Usertipdietrecord < ApplicationRecord
  belongs_to :user
  belongs_to :tipdiet
end
