class Ability
  include CanCan::Ability

  def initialize(user)
    user ||= User.new(:role => "visitor")
    case user.role
    when "admin"
      can :manage, :all
    when "user"
      can :new_flash_message, :all
      can :read, :all
      can :set_exercise_done, :all
      can :list, :all
      can :start, :all
      can :show_lesson, :all
      can :back_and_feedback, :all
      can :manage, User
      can :manage, Program
      cannot :create, User
      cannot :index, Program
      cannot :index, User
    when "visitor"
      can :create, User
    end
  end
end
