class PostsController < ApplicationController
  before_filter :auth
  
  def index
    @posts = Post.order "updated_at desc"
  end
  
  def show
    @post = Post.find params[:id]
  end
  
  def edit
    @post = Post.find params[:id]
  end
  
  def create
    @post = Post.new params[:post]
    if @post.save
      flash[:notice] = "Post was successfully created."
      redirect_to @post
    else
      flash[:notice] = "Post could not be created."
      render :action => "index"
    end
  end
  
  def update
    @post = Post.find params[:id]
    if @post.update_attributes params[:post]
      flash[:notice] = "Post was successfully updated."
      redirect_to @post
    else
      flash[:notice] = "Post could not be updated."
      render edit_post_path @post
    end
  end
  
  def destroy
    @post = Post.find params[:id]
    if @post.destroy
      flash[:notice] = "Post was successfully deleted."
      redirect_to posts_url
    else
      flash[:notice] = "Post could not be deleted."
      redirect_to @post
    end
  end
end
