class Character < ApplicationRecord
  belongs_to :race
  belongs_to :user
  belongs_to :status
  has_many :configurations
  has_many :powers, through: :configurations, source: :configurable, source_type: "Power"
  has_many :equipments, through: :configurations, source: :configurable, source_type: "Equipment"
  has_many :skills, through: :configurations, source: :configurable, source_type: "Skill"

  before_validation :set_defaults, unless: :characters_templates
  validate :level_update

  def alive?
    status.name == "alive"
  end

  private

  def set_defaults
    self.level = 1
    self.status = 'alive'
    errors.add(:habilities, "Personaje debe comenzar con 2 habilidades") if race.skills.size != 2
    errors.add(:powers, "Personaje debe comenzar con 1 poder") if race.powers.size != 1
    errors.add(:equipment, "Personaje debe comenzar con 1 equipamiento") if equipments.size != 1
  end

  def characters_templates
    Character.all.size <= 2
  end

  def level_update
    errors.add(:level, "Nivel no puede ser menor al actual #{level}") if level_was && level < level_was
  end
end

