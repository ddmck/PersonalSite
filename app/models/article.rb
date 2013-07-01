class Article < ActiveRecord::Base
  attr_accessible :body, :tags, :title, :views, :article_image, :remote_article_image_url
  mount_uploader :article_image, ImageUploader
end
