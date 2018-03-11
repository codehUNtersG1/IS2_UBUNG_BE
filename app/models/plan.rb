class Plan < ApplicationRecord
  has_and_belongs_to_many :users
  has_and_belongs_to_many :phyactivities
end
