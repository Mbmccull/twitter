class LikesController < ApplicationController
  before_action :authenticate_user!
  before_action :set_tweet

def create
  @tweet.likes.where(user_id: current_user.id).first_or_create
  redirect_to request.referrer
  end

def destroy
  @tweet.likes.where(user_id: current_user.id).destroy_all
  redirect_to request.referrer
end

private

def set_tweet
  @tweet = Tweet.find(params[:tweet_id])
end

end
