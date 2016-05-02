class TweetsController < ApplicationController
  def index
    render json: Tweet.stream_for(current_user.id)
  end

  def create
    tweet = current_user.tweets.build(body: params[:body])
    tweet.save
    render json: tweet
  end

end
