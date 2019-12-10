class UsersController < ApplicationController
  def show
    @name = current_user.name
    @tweets = Tweet.where(user_id: current_user.id).order("created_at DESC").page(params[:page]).per(5)
  end
end
