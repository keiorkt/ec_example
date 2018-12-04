class ArticlesController < ApplicationController
    # PER = 5

    def index
      @articles = Article.all
    #   @articles = Article.paginate(:page => params[:page], :per_page => PER)
      @categories = ArticleCategory.all
      # render json: @articles
    end

    def category
    #   @articles = Article.where(:event_category_id => params[:id])
    end

  end