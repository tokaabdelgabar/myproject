# in models/admin_ability.rb
class AdminAbility
  include CanCan::Ability
  def initialize(user)
  	
    can :read, :all 
    if user && user.superadmin == true
      can :access, :rails_admin
      can :dashboard 
      can :manage, :all

      elsif user.admin == true
        can :access, :rails_admins
        can :dashboard 
        can :manage
        cannot :destroy
        cannot :update
        cannot :create
    end 
  end
end 