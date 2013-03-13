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
      cannot :read, Program
    end
  end
end
