class Blog < ActiveRecord::Base
  attr_accessible :body, :tags, :title, :blog_image, :remote_blog_image_url
  mount_uploader :blog_image, BlogImageUploader
end
