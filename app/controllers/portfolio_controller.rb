class PortfolioController < ApplicationController
  before_filter :authenticate_admin!, except: [:index]
  def index
    @items = Portfolio.all
  end

  def new
    @item = Portfolio.new
  end
  
end
