class Ability
  include CanCan::Ability
  def initialize(user)
    if user.admin?
      can :manage, :all
    else
      can [:read, :update, :destroy], Album
      can :manage, User
    end
  end
end