class Phyactivity < ApplicationRecord
  has_and_belongs_to_many :plans
  has_one :place
  has_many :pictures, as: :imageable
end
