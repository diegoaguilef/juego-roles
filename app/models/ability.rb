# frozen_string_literal: true

class Ability
  include CanCan::Ability

  def initialize(user)
    can :manage, :all if user.admin?
    player_permissions(user)
    gm_permissions(user)
  end

  def player_permissions(user)
    can :create, Character
    can :create, Configuration, Configuration.where(user: user, configurable_type: %w[Equipment Power Skill])
    can :update, Configuration, Configuration.where(user: user, configurable_type: %w[Equipment Power Skill])
  end

  def gm_permissions(user)
    if user.gm?
      cannot :delete, Configuration, Configuration.where.not(user: user)
      can :create, Configuration, Configuration.where(user: user, configurable_type: %w[Equipment Power Skill])
      can :update, Configuration, Configuration.where(user: user, configurable_type: %w[Equipment Power Skill])
      can :update, Character
      can :create, Skill
      can :update, Skill
      can :create, Race
      can :create, Equipment
      can :update, Equipment
      can :create, Status
    end
  end
end
