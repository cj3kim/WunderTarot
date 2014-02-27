module LandingPagesHelper

  def notice_or_alert
    if notice
      return "<p class='notice'>#{notice}</p>".html_safe
    elsif alert
      return "<p class='alert'>#{alert}</p>".html_safe
    else
      return
    end
  end
end
