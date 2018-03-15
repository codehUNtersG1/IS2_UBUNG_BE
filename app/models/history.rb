class History < ApplicationRecord
  belongs_to :user
  validates :description, presence: true, length:  {maximum: 500}
  validates :weight, presence: true, numericality: { only_float: true }
  validates :height, presence: true, numericality: { only_integer: true }
  validates :start, presence: true, timeliness: {type: :datetime}
  validates :current_time, presence: true, timeliness: {type: :datetime}
  validates :num_achievements, presence: true
  validates :num_events, presence: true
  validates :num_diets, presence: true
  validates :num_groups, presence: true
  validates :num_physical_activities, presence: true
  validates :level, presence: true
  # validates_format_of :start, :with => /\d{2}\/\d{2}\/\d{4}/, :message => "^La fecha debe seguir el siguiente formato: dd/mm/aaaa"
  # validates_format_of :current_time, :with => /\d{2}\/\d{2}\/\d{4}/, :message => "^La fecha debe seguir el siguiente formato: dd/mm/aaaa"

end
