class LikesController < ApplicationController
  def new
    @like = current_user.likes.create(tweet_id: params[:tweet_id])
    redirect_back(fallback_location: root_path)
  end

  def destroy
    @like = Like.find_by(tweet_id: params[:tweet_id], user_id: params[:id])
    @like.destroy
    redirect_back(fallback_location: root_path)
  end
end
