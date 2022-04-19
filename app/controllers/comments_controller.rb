class CommentsController < ApplicationController
  before_action :set_blog, only: %i[show edit update destroy]
  
  def create 
    @comment = current_user.comments.new(comment_params)
    if !@comment.save
      flash[:notice] = @comment.errors.full_message.to_sentence
    end

    redirect_to blog_path(params[:blog_id])
  end

  def new 
    @comment = Comment.new
  end

  private 
    def comment_params 
      params
      .require(:comment)
      .permit(:body)
      .merge(blog_id: params[:blog_id])
    end
end
