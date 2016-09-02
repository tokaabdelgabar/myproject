# in models/admin_ability.rb
class AdminAbility
  include CanCan::Ability
  def initialize(user)
  	
    #can :read, :all 
    if user && user.superadmin == true
      can :access, :rails_admin
      can :dashboard 
      can :manage, :all

      elsif user.admin == true
        can :access, :rails_admin
        can :dashboard 
        can :manage, :all
        cannot :destroy, User
        cannot :update, User
    end 
  end
end


# Performed checks for `collection` scoped actions:
#can :index, Model         # included in :read
#can :new, Model           # included in :create
#can :export, Model
#can :history, Model       # for HistoryIndex
#can :destroy, Model       # for BulkDelete

# Performed checks for `member` scoped actions:
#can :show, Model, object            # included in :read
#can :edit, Model, object            # included in :update
#can :destroy, Model, object         # for Delete
#can :history, Model, object         # for HistoryShow
#can :show_in_app, Model, object