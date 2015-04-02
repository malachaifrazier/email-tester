class Ability
  include CanCan::Ability

  def initialize(user)
    user ||= User.new # guest user (not logged in)
    if user && user.has_role?(:admin)
      can :manage, :all
      can :access, :rails_admin   # grant access to rails_admin
      can :dashboard              # grant access to the dashboard
    else
      can :manage, Track if user.has_role? :artist
      can :manage, Track if user.has_role? :super_producer
      can :manage, Track if user.has_role? :vendor
    end
  end
end