Refinery::Blog::Post.class_eval do 
 acts_as_indexed :fields => [:title, :body]

  def friendly_search_name
    "Article"
  end
end