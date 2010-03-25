class RevealController < ApplicationController
  # require "themes/#{Config.theme}/helper"
  layout "../themes/#{Config.theme}/layout"
  
  def index
    # @posts = Post.order "created_at desc"
    @posts = Post.paginate :page => params[:page], :order => 'created_at DESC'
    render :template => "themes/#{Config.theme}/index"
  end
  
  def show
    @post = Post.find params[:id]
    render :layout => "../themes/#{Config.theme}/layout", :template => "themes/#{Config.theme}/post"
  end
end
