class CommentsController < ApplicationController
  def create
    @comment = Comment.create(tweet_id: comment_params[:tweet_id],user_id:current_user.id,text: comment_params[:text])
    respond_to do |f|
      format.html {redirect_back(fallback_location: root_path)}
      format.json
  end

  private
  def comment_params
    params.permit(:tweet_id,:text)
  end
end
