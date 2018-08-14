class CommentsController < ApplicationController
  before_action :authenticate_user!
  
  
  
  def create
    comment = Comment.new
    comment.content = params[:input_content]
    comment.note_id = params[:note_id]
    comment.user = current_user.email
    comment.save
    redirect_to "/notes/#{comment.note.id}"
  end

  def destroy
    comment = Comment.find params[:id]
    comment.destroy
    redirect_to "/notes/#{comment.note.id}"
  end
end
