# == Schema Information
#
# Table name: tipdiets
#
#  id          :integer          not null, primary key
#  description :text
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

class Tipdiet < ApplicationRecord
  has_many :usertipdietrecords
  has_many :users, through: :usertipdietrecords

  validates :description, presence: true , length:  {maximum: 500}

end
