class Skill < ApplicationRecord
  belongs_to :race
  has_many :configurations, as: :configurable

  validate :race_change?, on: :update

  private

  def race_change?
    errors.add(:race, "No está permitido cambiar de raza") if race_was != race
  end
end
