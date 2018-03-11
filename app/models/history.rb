class History < ApplicationRecord
  validates :description, presence: true
  validates :weight, presence: true
  validates :height, presence: true
  validates :start, presence: true
  validates :current_time, presence: true
  validates :num_achievements, presence: true
  validates :num_events, presence: true
  validates :num_diets, presence: true
  validates :num_groups, presence: true
  validates :num_physical_activities, presence: true
  validates :level, presence: true
end
