class CommentsController < ApplicationController
  before_action :authenticate_user!, only: %i[create edit destroy update]

  def create 
    @comment = current_user.comments.new(comment_params)

    if @comment.save 
      redirect_to blog_path(params[:blog_id])
      flash[:notice] = "Comment created successfully"
    end
    
  end
  
  def edit
    @blog = Blog.find(params[:blog_id])

    puts @blog.id
    
    @comment = @blog.comments.find(params[:id]) 
  end

  def new 
    @comment = Comment.new
  end

  def update 
    @blog = Blog.find(params[:blog_id])
    
    @comment = @blog.comments.find(params[:id])

    if @comment.update(comment_params)
      redirect_to blog_path(@blog), notice: "Comment was sucessfully updated"
    end
  end


  def destroy 
    @blog = Blog.find(params[:blog_id])
    
    @comment = @blog.comments.find(params[:id])

    if @comment.destroy 
      redirect_to blog_path(params[:blog_id])
      flash[:notice] = "Comment successfully destroyed"
    end

  end

  private 
    def comment_params 
      params
      .require(:comment)
      .permit(:body)
      .merge(blog_id: params[:blog_id])
    end
end
