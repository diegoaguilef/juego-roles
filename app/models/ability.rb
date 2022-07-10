# frozen_string_literal: true

class Ability
  include CanCan::Ability

  def initialize(user)
    can :manage, :all, if user.admin?
    gm_permissions(user)
  end

  def gm_permissions(user)
    if user.gm?
      cannot :delete, Configuration, Configuration.where.not(user: user)
      can :create, Configuration, Configuration.where(user: user, configurable_type: %w[Equipment Power Skill])
      can :update, Configuration, Configuration.where(user: user, configurable_type: %w[Equipment Power Skill])
      can :update, Character
    end
  end
end
