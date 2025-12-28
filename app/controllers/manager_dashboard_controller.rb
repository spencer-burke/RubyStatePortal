class ManagerDashboardController < ApplicationController
  before_action :require_authentication

  layout "hub"

  def index
    authorize :manager_dashboard
  end
end
