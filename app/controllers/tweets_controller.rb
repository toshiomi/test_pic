class TweetsController < ApplicationController
  before_action :log_in_cheak, except: :index
  before_action :set_params, only:[:edit,:update,:destroy]

  def index
    @tweets = Tweet.includes(:user).order("created_at DESC").page(params[:page]).per(5)
  end

  def new
    @tweet = Tweet.new
  end

  def create
    Tweet.create(tweet_params)
  end

  def edit
  end

  def update
    @tweet.update(tweet_params) if @tweet.user_id == current_user.id
  end

  def destroy
    @tweet.destroy if @tweet.user_id == current_user.id
  end

  private
  def tweet_params
    params.require(:tweet).permit(:name,:text,:image).merge(user_id: current_user.id)
  end

  def set_params
    @tweet = Tweet.find(params[:id])
  end

  def log_in_cheak
    redirect_to root_path unless user_signed_in?
  end
end
