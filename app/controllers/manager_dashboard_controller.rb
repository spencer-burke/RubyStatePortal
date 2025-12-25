class ManagerDashboardController < ApplicationController
  def index
    authorize :manager_dashboard
  end
end
