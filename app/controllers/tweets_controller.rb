class TweetsController < ApplicationController
  before_action :log_in_check, except: [:index,:show]
  before_action :set_params, only: [:show,:edit,:update,:destroy]
  before_action :status_check,only: [:create, :update]

  def index
    @tweets = Tweet.includes(:user).order("created_at DESC").page(params[:page]).per(5)
  end

  def new
    @tweet = Tweet.new
  end

  def create
    Tweet.create(tweet_params)
  end

  def show
    @comments = @tweet.comments.includes(:user)
  end

  def edit
  end

  def update
    @tweet.update(tweet_params) if @tweet.user_id == current_user.id
  end

  def destroy
    @tweet.destroy if @tweet.user_id == current_user.id
  end

  def search
    @tweets = Tweet.search(params[:keyword])
    respond_to do |f|
      f.html
      f.json
    end
  end

  private
  def tweet_params
    params.require(:tweet).permit(:name,:text,:image,:h,:a,:b,:c,:d,:s,:personality_id).merge(user_id: current_user.id)
  end

  def set_params
    @tweet = Tweet.find(params[:id])
  end

  def log_in_check
    redirect_to root_path unless user_signed_in?
  end

  def status_check
    if tweet_params[:h] == "" || tweet_params[:a] == "" || tweet_params[:b] == "" || tweet_params[:c] == "" || tweet_params[:d] == "" || tweet_params[:s] == ""
      redirect_back(fallback_location: root_path)
    end
  end
  
end
