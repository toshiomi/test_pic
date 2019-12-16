class CommentsController < ApplicationController
  def create
    Comment.create(tweet_id: params[:tweet_id],user_id:current_user.id,text: params[:text],)
    redirect_back(fallback_location: root_path)
  end

  def destroy
    
  end
end
