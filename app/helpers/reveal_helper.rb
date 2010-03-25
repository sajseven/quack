module RevealHelper
  def revealled_url(post)
    reveal_url(:year => post.created_at.year, :month => post.created_at.month, :id => post.id)
  end
end
