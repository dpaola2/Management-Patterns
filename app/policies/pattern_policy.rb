class PatternPolicy < ApplicationPolicy
  class Scope < Scope
    # NOTE: Be explicit about which records you allow access to!
    # def resolve
    #   scope.all
    # end
  end

  def index?
    true
  end

  def show?
    true
  end

  def edit?
    user.present?
  end

  def update?
    user.present?
  end

  def create?
    user.present?
  end

  def new?
    user.present?
  end

  def destroy?
    user.present?
  end
end
