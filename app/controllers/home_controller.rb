# Concerns for the landing page

class HomeController < ApplicationController
  def index
    render layout: "homepage"
  end
end
