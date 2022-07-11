class Equipment < ApplicationRecord
  has_many :configurations, as: :configurable

  validate :modifications, on: :update

  private

  def modifications
    errors.add(:base, "Solo puede modificar el nombre") if description_changed? || position_changed? 
  end
end
