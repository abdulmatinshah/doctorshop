Refinery::PagesController.class_eval do

before_filter :get_latest_posts, only: [:home]
private

def get_latest_posts(n=3)
  @blog_posts = Refinery::Blog::Post.live.limit(n)
  
   # @quotations = Refinery::Quotations::Quotation.all
end
end