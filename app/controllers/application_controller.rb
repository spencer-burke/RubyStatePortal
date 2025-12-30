class ApplicationController < ActionController::Base
  include Authentication
  include Pundit::Authorization

  # Tell rails to run some code if pundit raises an error
  rescue_from Pundit::NotAuthorizedError, with: :user_not_authorized
  # Only allow modern browsers supporting webp images, web push, badges, import maps, CSS nesting, and CSS :has.
  allow_browser versions: :modern

  # Changes to the importmap will invalidate the etag for HTML responses
  stale_when_importmap_changes

  # link the current_user and Current.user pundit looks for current_user
  # pundit will throw an error because it can't find current_user without this
  def current_user
    Current.user
  end

  private

  def user_not_authorized
    # set flash message
    flash[:alert] = "You are not authorized to perform this action"

    # send them back from where they came, or to the landing
    redirect_back_or_to(root_path)
  end
end
