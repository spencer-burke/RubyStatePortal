class Pages::LandingPageController < JumperCable::PageController
  include Authentication
  allow_unauthenticated_access

  layout "guest"

  def page
  end
end
