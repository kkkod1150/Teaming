class CommentsController < ApplicationController
  before_action :authenticate_user!
  
  
  
  def create
    comment = Comment.new
    comment.content = params[:input_content]
    comment.note_id = params[:note_id]
    comment.user_id = params[:user_id]
    comment.user_email = params[:user_email]
    comment.save
    redirect_to "/notes/#{comment.note.id}"
  end

  def destroy
    @note = Comment.find params[:id]
    if @note.user != current_user
        redirect_to notes_path
    else
      comment = Comment.find params[:id]
      comment.destroy
      redirect_to "/notes/#{comment.note.id}"
    end
  end
end
