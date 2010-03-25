class Post < ActiveRecord::Base
  cattr_reader :per_page
  @@per_page = Config.posts_per_page
  
  def date
    self.created_at.strftime Config.time_format
  end
  
  def public_url
    { :controller => "reveal", :action => "show",
      :year => self.created_at.year, :month => self.created_at.month, :id => self.id }
  end
end
