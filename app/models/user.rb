class User < ApplicationRecord
  has_one :history
  has_many :comments
  has_and_belongs_to_many :achievements
  has_and_belongs_to_many :diets
  has_and_belongs_to_many :plans
  has_and_belongs_to_many :events
  has_and_belongs_to_many :groups
  has_and_belongs_to_many :tipdiets
  has_and_belongs_to_many :tipactivities
  validates :name, presence: true , length:  {maximum: 50}
  validates :email, presence: true , uniqueness: true
  validates_format_of :name, :with => /\A[a-zA-Z]+(?: [a-zA-Z]+)?\z/
  validates_format_of :email, :with => /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i


end
