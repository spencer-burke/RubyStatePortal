class ResidentDashboardController < ApplicationController
  before_action :require_authentication

  layout "hub"

  def index
  end
end
