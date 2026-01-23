class PropertiesPolicy < ApplicationPolicy

  def index?
    admin_user?
  end

  def show?
    admin_user?
  end

  def edit?
    admin_user?
  end

  def create?
    admin_user?
  end

  def edit?
    admin_user?
  end

  def update?
    admin_user?
  end

  def destroy?
    admin_user?
  end

  class Scope < ApplicationPolicy::Scope
    # NOTE: Be explicit about which records you allow access to!
    # def resolve
    #   scope.all
    # end
  end

  private

  def admin_user?
    manager? || developer?
  end

end
