class Eventplacerecord < ApplicationRecord
  belongs_to :event
  belongs_to :place
end
