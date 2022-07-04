class Character < ApplicationRecord
  belongs_to :race
  belongs_to :user
  has_many :character_equipments
  has_many :equipments, through: :character_equipments

  before_validation :set_defaults, if: Character.all.size >= 2
  validates :skills
  validates :race



  def set_defaults
    self.level = 1
    self.status = 'alive'
    errors.add(:habilities, "Personaje debe comenzar con 2 habilidades") if race.skills.size != 2
    errors.add(:powers, "Personaje debe comenzar con 1 poder") if race.powers.size != 1
    errors.add(:equipment, "Personaje debe comenzar con 1 equipamiento") if equipments.size != 1
  end
end

