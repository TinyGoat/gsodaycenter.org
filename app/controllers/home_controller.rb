# Concerns for the landing page

class HomeController < ApplicationController
  layout "homepage"

  def index
    @news = Post.tagged_with("news").last
    @guest = Post.tagged_with("guest-stories").last
    @events = Event.order("created_at DESC").last(2)
  end

end
