# == Schema Information
#
# Table name: foods
#
#  id           :integer          not null, primary key
#  name         :string
#  sort         :string
#  description  :string
#  averageprice :string
#  created_at   :datetime         not null
#  updated_at   :datetime         not null
#

class Food < ApplicationRecord
  has_many :dietfoodrecords
  has_many :diets, through: :dietfoodrecords

  has_many :pictures, as: :imageable, dependent: :destroy

  validates :description, presence: true, length:  {maximum: 200}
  validates :sort, presence: true
  validates :name, presence: true , length:  {maximum: 30}
  validates :averageprice, presence: true
end
