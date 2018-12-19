class ArticlesController < ApplicationController
  PER = 5

  def index
    @article_categories = ArticleCategory.all
    @articles = Article.paginate(:page => params[:page], :per_page => PER)
  end

  def show
    @article = Article.where(:id => params[:id])
    @article_categories = ArticleCategory.all
  end

  def category
    @articles = Article.where(:article_category_id => params[:id])
                       .includes(:article_category)
                       .paginate(:page => params[:page], :per_page => PER)
    @article_categories = ArticleCategory.all
  end
end