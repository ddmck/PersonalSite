class PortfolioItem < ActiveRecord::Base
  attr_accessible :description, :github, :link, :title, :portfolio_image, :remote_portfolio_image_url
  mount_uploader :portfolio_image, PortfolioImageUploader
end
