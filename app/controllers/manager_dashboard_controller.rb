class ManagerDashboardController < ApplicationController
  before_action :require_authentication

  def index
    authorize :manager_dashboard
  end
end
