class CommentsController < ApplicationController
  def create 
    @blog = Blog.find(params[:blog_id])
    @comment = @blog.comments.create(comment_params)
    @comment.user_id = current_user.id
    if @comment.save 
      redirect_to blog_path(@blog), notice: "Comment created successfully"
    else
      flash[:alert] = @comment.errors
    end
  end

  def new 
    @comment = Comment.new
  end

  private 
    def comment_params 
      params.require(:comment).permit(:body, :user_id, :blog_id)
    end
end
