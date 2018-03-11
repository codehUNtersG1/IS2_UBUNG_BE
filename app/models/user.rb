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
end
