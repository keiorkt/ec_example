class Admin::ArticlesController < Admin::BaseController

    # GET /admin/articles
    def index
      @articles = Article.all
    end

    # GET /admin/articles/1
    def show
      @article = Article.find_by(id: params[:id])
    end

    # GET /admin/articles/new
    def new
      @article = Article.new
      @article_categories = get_article_categories_hash
    end

    # GET /admin/articles/1/edit
    def edit
    end

    # POST /admin/articles
    def create
      @article = Article.new(article_params)

      if @article.save
        redirect_to admin_article_path(@article), notice: 'article was successfully created.'
      else
        flash.now[:alert] = 'article could not be created'
        render :new
      end
    end

    private

    def get_article_categories_hash
      article_category_hash = Hash.new
      ArticleCategory.all.map{|e| e.name}.each_with_index{|s,i|
                          article_category_hash[s] = i+1 # indexが0からスタートするため
                      }
      article_category_hash
    end

    def article_params
      params.require(:article).permit(:title, :body, :article_category_id)
    end
  end
