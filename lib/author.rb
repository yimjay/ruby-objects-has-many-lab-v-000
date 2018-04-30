class Author
  attr_accessor :name, :posts
  @@post_counts = 0 
  
  def initialize(name)
    @name = name
    @posts = []
  end
  
  def add_post(post)
    @posts << post
    post.author = self
    @@post_counts += 1
  end
  
  def add_post_by_title(title)
    post = Post.new(title)
    @posts << post
    post.author = self
    @@post_counts += 1
  end
  
  def self.post_count
    @@post_counts
  end
  
end