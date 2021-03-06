class CommentsController < ApplicationController
  before_action :set_forum_article
  before_action :set_article_comment, only:%i[show edit update upvote downvote destroy]
  before_action :require_user, only: [:show, :index, :new, :create,:destroy, :upvote, :downvote]

  def new
    @comment = Comment.new
  end

  def show
    @comment = Comment.find(params[:id])
  end

  def index
    @comments = @article.comments.paginate(:page => params[:page], :per_page => 6)
  end

  def create
    @comment = Comment.new(comment_params)

    respond_to do |format|
      if @comment.save
        format.html {redirect_to forum_article_path(@forum, @article) }
      else
        format.html { render :new }
      end
    end
  end

  def update
      if @comment.update(comment_params)
        redirect_to forum_article_path(@forum, @article)
      else
        render 'edit'
      end
  end

  def downvote

   @comment.disliked_by current_user
   redirect_to forum_article_path(@forum, @article)

  end

  def upvote
    @comment.liked_by current_user
    redirect_to forum_article_path(@forum, @article)

  end

  def destroy
    @comment.destroy
    redirect_to forum_article_path(@forum, @article)
  end

  private
    def comment_params
      params.require(:comment).permit(:op, :content, :article_id, :op_id)
    end

    def set_article_comment
      @comment = @article.comments.find_by!(id: params[:id]) if @article
    end

    def set_forum_article
      @forum = Forum.find(params[:forum_id])
      @article = Article.find(params[:article_id])
    end

end
