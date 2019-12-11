class UsersController < ApplicationController
  def show
    @name = current_user.name
    @tweets = current_user.tweets.order("created_at DESC").page(params[:page]).per(5)
  end
end
