# == Schema Information
#
# Table name: groups
#
#  id          :integer          not null, primary key
#  name        :string
#  sort        :string
#  description :text
#  num_members :integer
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

class Group < ApplicationRecord
  has_many :usergrouprecords
  has_many :users, through: :usergrouprecords

  has_one :picture, as: :imageable, dependent: :destroy

  validates :name, presence: true, length:  {maximum: 50}
  validates :sort, presence: true
  validates :description, presence: true , length:  {maximum: 500}
  validates :num_members, presence: true
end
