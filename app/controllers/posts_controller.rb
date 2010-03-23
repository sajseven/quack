class PostsController < ApplicationController
  def index
    @posts = Post.order "updated_at desc"
  end
  
  def show
    @post = Post.find params[:id]
  end
  
  def create
    @post = Post.new params[:post]
    if @post.save
      flash[:notice] = "Post was successfully saved."
      redirect_to @post
    else
      flash[:notice] = "Post could not be saved."
      render :action => "index"
    end
  end
end
