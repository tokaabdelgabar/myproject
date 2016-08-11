# in models/admin_ability.rb
class AdminAbility
  include CanCan::Ability
  def initialize(user)
  	can :read, :all 
    if user && user.admin == true
      can :access, :rails_admin
      can :dashboard 
      can :manage, :all

      #if user.has_role? :superadmin
       # can :manage, :all             # allow superadmins to do anything
      
      #elsif user.has_ole? :admin
       # can :manage, [App, Category]  # allow managers to do anything to products and users
    #end 
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