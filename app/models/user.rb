class User < ApplicationRecord
  has_one :history
  has_many :comments, dependent: :destroy
  has_and_belongs_to_many :users_comments, :join_table => "users_comments", :class_name => "Achievement"
  has_and_belongs_to_many :users_diets, :join_table => "users_diets", :class_name => "Diet"
  has_and_belongs_to_many :users_plans, :join_table => "users_plans", :class_name => "Plan"
  has_and_belongs_to_many :events, :join_table => "users_events", :class_name => "Event"
  has_and_belongs_to_many :groups, :join_table => "users_groups", :class_name => "Group"
  has_and_belongs_to_many :tipdiets, :join_table => "users_tip_diets", :class_name => "Tipdiet"
  has_and_belongs_to_many :tipactivities, :join_table => "users_tip_activities", :class_name => "Tipactivity"
  validates :name, presence: true , length:  {maximum: 50}
  validates :email, presence: true , uniqueness: true
  validates_format_of :name, :with => /\A[a-zA-Z]+(?: [a-zA-Z]+)?\z/
  validates_format_of :email, :with => /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i


end
