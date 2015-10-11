class TwitterController < ApplicationController
  CLIENT = Twitter::REST::Client.new do |config|
    config.consumer_key        = ENV["TWITTER_CONSUMER_KEY"]
    config.consumer_secret     = ENV["TWITTER_CONSUMER_SECRET"]
    config.access_token        = ENV["TWITTER_ACCESS_TOKEN"]
    config.access_token_secret = ENV["TWITTER_ACCESS_SECRET"]
  end

  def latest
    tweets = CLIENT.user_timeline(params[:account], count: 1)

    respond_to do |format|
      format.json { render json: { ids: tweets.map(&:id) } }
    end
  end
end
