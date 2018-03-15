class Comment < ApplicationRecord
  validates :description, presence: true , length:  {maximum: 500}
  validates :date, presence: true, timeliness: {type: :datetime}

end
