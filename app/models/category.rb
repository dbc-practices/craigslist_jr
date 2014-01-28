class Category < ActiveRecord::Base
  has_many :posts

  def self.new_post(args)
    title = args["title"]
    category = self.where(name: args["category"])[0]
    content = args["content"]
    Post.create(title:title, category_id:category.id, content: content)
  end

  def self.edit_post(args)
    post = Post.where(id: args["id"].to_i)[0]
    title = args["title"]
    content = args["content"]
    post.update_attributes(title:title, content: content)
  end
end
