class LandingPagesController < ActionController::Base

  def index
    layout 'application'
  end

  def subdomain
    subdomain = request.subdomain

    if subdomain == "m"
      render(file: "layouts/mobile")
    else
      raise ActionController::RoutingError.new('Not Found')
    end
  end
end
