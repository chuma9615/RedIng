class ArticlesController < ApplicationController
  before_action :set_forum, only: [:show, :index, :new, :create, :upvote, :downvote, :destroy, :update, :edit, :vote_sort]
  before_action :set_forum_article, only: %i[ update destroy destroy edit]
  before_action :require_user, only: [:new, :create, :upvote, :downvote, :destroy, :update, :edit]


  def new
    @article = Article.new
  end

  def show
    @article = @forum.articles.find_by!(id: params[:id]) if @forum
    @comments = @article.comments.paginate(:page => params[:page], :per_page => 4)
    @article = @forum.articles.find_by!(id: params[:id]) if @forum
  end

  def index
    @articles = @forum.articles.all
    @article_ranking = @articles.order(:cached_votes_score => :desc)
    if params[:search]
      @articles = Article.paginate(:page => params[:page], :per_page => 2).where(['title ILIKE ?',"%#{params[:search]}%"])
      respond_to do |format|
        format.html
        format.js
    end
    else
      @articles = @forum.articles.all
      @articles = @articles.paginate(:page => params[:page], :per_page => 2)
    end
  end

  def vote_sort
    @articles = @forum.articles.all
    @article_ranking = @articles.order(:cached_votes_score => :desc)
    if params[:search]
      @articles = @articles.order(:cached_votes_score => :desc).paginate(:page => params[:page], :per_page => 2).where(['title ILIKE ?',"%#{params[:search]}%"])
      respond_to do |format|
        format.html
        format.js
    end
    else
      @articles = @forum.articles.all
      @articles = @articles.order(:cached_votes_score => :desc).paginate(:page => params[:page], :per_page => 2)
    end
  end

  def downvote
   @article = @forum.articles.find_by!(id: params[:id]) if @forum
   @article.disliked_by current_user
   redirect_to forum_article_path
  end

  def upvote
    @article = @forum.articles.find_by!(id: params[:id]) if @forum
    @article.liked_by current_user
    redirect_to  forum_article_path
  end



  def create
    @article = Article.new(article_params)
    respond_to do |format|
      if @article.save
        format.html { redirect_to forum_article_path(@forum, @article), notice: "Se ha creado con exito el artículo" }
      else
        format.html { render :new }
      end
    end
  end

  def edit

  end

  def update
      if @article.update(article_params)
        redirect_to forum_article_path(@forum)
      else
        render 'edit'
      end
  end

  def destroy
    @article.destroy
    redirect_to @forum
  end


  private
    def article_params
      params.require(:article).permit(:title, :body, :op, :op_id, :forum_id,:img)
    end

    def set_forum_article
      @article = @forum.articles.find_by!(id: params[:id]) if @forum
    end

    def set_forum
      @forum = Forum.find(params[:forum_id])
    end
end
