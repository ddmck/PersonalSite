class BlogsController < ApplicationController
  before_filter :authenticate_admin!, except: [:show, :index, :incPageView]
  

  def index
    @articles = Blog.order("created_at DESC")
    @top3 = Blog.order("views DESC").first(3)
    @article = Blog.new
  end

  def show
    @article = Blog.find(params[:id])
    incPageView(@article)
    @comment = Comment.new
    @comment.article_id = @article.id
  end

  def new
    @article = Blog.new
  end

  def create
    @article = Blog.new(params[:article])
    @article.views = 0
    @article.save

    flash.notice = "Successfully created '#{@article.title}'"
    redirect_to article_path(@article)
  end

  def edit
    @article = Blog.find(params[:id])
  end

  def update
    @article = Blog.find(params[:id])
    @article.update_attributes(params[:article])

    flash.notice = "'#{@article.title}'' updated"
    redirect_to article_path(@article)
  end

  def destroy
    @article = Blog.find(params[:id])
    @article.destroy

    flash.notice = "Successfully deleted '#{@article.title}'!"
    redirect_to articles_path
  end

  def incPageView(article)
    article.views += 1
    article.update_attributes(params[:views])
  end
end
