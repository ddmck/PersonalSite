class PortfolioItem < ActiveRecord::Base
  attr_accessible :description, :github, :link, :title
end
