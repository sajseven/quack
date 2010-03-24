class RevealController < ApplicationController
  def index
    @posts = Post.order "created_at desc"
    render :layout => "../themes/#{Config.theme}/layout", :template => "themes/#{Config.theme}/index"
  end
  
  def css
    headers["Content-Type"] = "text/css; charset=utf-8"
    render :inline => get_file_as_string("app/views/themes/#{Config.theme}/style.css")
  end
  
  private
  
  def get_file_as_string(filename)
	  f = File.open(filename, "r")
		data = ""
	  f.each_line do |line|
	    data += line
	  end
	  data
	end
end
