class ArticlesController < ApplicationController
  before_action :set_forum
  before_action :set_forum_article, only: %i[show edit update destroy]


  def new
    @article = Article.new
  end
  def index
    @articles = @forum.articles.all
  end
  def create
    @article = Article.new(article_params)
    respond_to do |format|
      if @article.save
        format.html {redirect_to forum_article_path(@forum, @article), notice: 'El articulo se ha creado.' }
      else
        format.html { render :new }
      end
    end
  end

  private
    def article_params
      params.require(:article).permit(:title, :body, :op)
    end

    def set_forum_article
      @article = @forum.article.find_by!(id: params[:id]) if @forum
    end

    def set_forum
      @forum = Forum.find(params[:forum_id])
    end
end
