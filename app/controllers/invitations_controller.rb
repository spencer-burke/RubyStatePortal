class InvitationsController < ApplicationController
  def show
    authorize :invitations
  end

  def new
    authorize :invitations
  end
end
