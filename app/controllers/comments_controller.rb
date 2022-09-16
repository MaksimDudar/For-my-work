class CommentsController < ApplicationController
  before_action :authenticate_user!, :only => [:create]

  def create
    @track = Track.find(params[:track_id])
    @comment = @track.comments.create(comment_params)
    @comment.author = current_user.username
    @comment.save
    redirect_to track_path(@track)
  end
private
  def comment_params
  params.require(:comment).permit(:author, :body)
  end
end
