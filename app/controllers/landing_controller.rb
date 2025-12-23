class LandingController < ApplicationController
  allow_unauthenticated_access

  layout "guest"
  def index
  end
end
