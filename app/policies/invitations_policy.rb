class InvitationsPolicy < ApplicationPolicy
  def new?
    manager? || developer?
  end

  def show?
    resident? || manager? || developer?
  end
end
