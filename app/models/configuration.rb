class Configuration < ApplicationRecord
  belongs_to :configurable, polymorphic: true
  belongs_to :user
  belongs_to :character

  validate :change_equipment

  private

  def change_equipment
    valid_change = (equipment_was != equipment) && character.status.alive?
    errors.add(:equipment, "Solo puedo modificar equipamiento estando vivo") unless valid_change
  end
end
