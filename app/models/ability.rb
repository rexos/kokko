class Ability
  include CanCan::Ability

  def initialize(user)
    user ||= User.new(:role => "visitor")
    case user.role
    when "admin"
      can :manage, :all
    when "user"
      can :read, :all
      can :list, :all
      can :start, :all
      can :edit, User
      can :update, User
      can :add_status, User
      can :resume, Program
      #edit can da controllare
      can :home_training, Program
      can :home_utente, User
      cannot :read, Program
    when "visitor"
      can :create, User
    end
  end
end
