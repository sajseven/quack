module ThemeHelper
  extend RevealHelper
  
  def post_mark(post, mark)
    @post ? mark.html_safe : link_to(mark.html_safe, post.public_url, :title => post.date)
  end
end