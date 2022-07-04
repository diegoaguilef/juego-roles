# frozen_string_literal: true

class Ability
  include CanCan::Ability

  def initialize(user)
    can :manage, :all, if user.admin?
    gm_permissions(user)
  end

  def gm_permissions(user)
    if user.gm?
      can :read, Character
    end
  end
end
