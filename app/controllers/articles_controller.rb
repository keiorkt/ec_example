class ArticlesController < ApplicationController
    PER = 5

    def index
      @article_categories = ArticleCategory.all
      @articles = Article.paginate(:page => params[:page], :per_page => PER)
      # render json: @articles
    end

    def category
    #   @articles = Article.where(:event_category_id => params[:id])
    end

  end