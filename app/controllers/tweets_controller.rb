class TweetsController < ApplicationController
  before_action :log_in_cheak, except: :index

  def index
    @tweets = Tweet.all.order("created_at DESC").page(params[:page]).per(5)
  end

  def new
    @tweet = Tweet.new
  end

  def create
    Tweet.create(tweet_params)
  end

  private
  def tweet_params
    params.require(:tweet).permit(:name,:text,:image)
  end

  def log_in_cheak
    redirect_to root_path unless user_signed_in?
  end
end
