class Ability
  include CanCan::Ability

  def initialize(user)
    can :read, :all

        can :access, :rails_admin
        can :dashboard
        can :manage, :all

  end
end