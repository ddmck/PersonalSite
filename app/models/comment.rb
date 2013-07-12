class Comment < ActiveRecord::Base
  belongs_to :article
  attr_accessible :article_id, :comment, :name
end
