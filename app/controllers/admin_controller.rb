class AdminController < ApplicationController
  before_action :require_login
  layout "admin"

  def index
    # Sets up Twitter
    client = Twitter::REST::Client.new do |config|
      config.consumer_key        = ENV["TWITTER_CONSUMER_KEY"]
      config.consumer_secret     = ENV["TWITTER_CONSUMER_SECRET"]
      config.access_token        = ENV["TWITTER_ACCESS_TOKEN"]
      config.access_token_secret = ENV["TWITTER_ACCESS_TOKEN_SECRET"]
    end

    # print latest status
    @tweets = client.user_timeline('gsodaycenter')[0...1]


    @news_count      = Post.tagged_with('news').count
    @event_count     = Event.count
    @user_count      = User.count
    @mail_count      = "638"
  end
end
