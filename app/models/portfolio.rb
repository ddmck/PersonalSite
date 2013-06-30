class Portfolio < ActiveRecord::Base
  attr_accessible :description, :image, :link, :title
end
