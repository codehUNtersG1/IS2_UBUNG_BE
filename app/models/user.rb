# == Schema Information
#
# Table name: users
#
#  id         :integer          not null, primary key
#  name       :string
#  email      :string
#  bio        :text
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class User < ApplicationRecord

  #Queries implementadas a través de scopes
  scope :query1, -> { User.first(3) }

  has_one :history, dependent: :destroy
  has_one :picture, as: :imageable, dependent: :destroy

  has_many :comments, dependent: :destroy

  has_many :userachievementrecords
  has_many :achievements, through: :userachievementrecords

  has_many :userdietrecords
  has_many :diets, through: :userdietrecords

  has_many :userplanrecords
  has_many :plans, through: :userplanrecords

  has_many :usereventrecords
  has_many :events, through: :usereventrecords

  has_many :usergrouprecords
  has_many :groups, through: :usergrouprecords

  has_many :usertipdietrecords
  has_many :tipdiets, through: :usertipdietrecords

  has_many :usertipactivityrecords
  has_many :tipactivities, through: :usertipactivityrecords


  validates :name, presence: true #, length:  {maximum: 60}
  validates :email, presence: true #, uniqueness: true
  #validates_format_of :name, :with => /\A[a-zA-Z]+(?: [a-zA-Z]+)?\z/
  #validates_format_of :email, :with => /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i






end
