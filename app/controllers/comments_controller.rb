class CommentsController < ApplicationController
  def create 
    # @blog = Blog.find(params[:blog_id])
    # @comment = @blog.comments.create(comment_params)
    # @comment.user_id = current_user.id
    # if @comment.save 
    #   redirect_to blog_path(@blog), notice: "Comment created successfully"
    # else
    #   flash[:alert] = @comment.errors
    # end
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
