class InvitationsController < ApplicationController

  # This shows the form for the resident/occupant to sign up
  def show
    authorize :invitations
  end

  # This will create the invitation in the database, create the token, and send the email
  def new
    authorize :invitations
  end

  # The endpoint that will handle the form submission from the show invitation page
  def accept
    authorize :invitations
  end
end
