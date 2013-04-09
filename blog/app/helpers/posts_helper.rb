module PostsHelper
  def new_header(post)
    title = post.title
    title = "New #{title}" if post.id.present?
  end
end
