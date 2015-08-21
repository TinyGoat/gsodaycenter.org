# Concerns for the landing page

class HomeController < ApplicationController
  layout "homepage"

  def index
    @news = Post.news.last
    @guest = Post.guest_stories.last
    @events = Event.last(2)
  end

end
