class Skill < ApplicationRecord
  belongs_to :race
  has_many :configurations, as: :configurable
end
