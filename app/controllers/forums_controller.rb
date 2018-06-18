class ForumsController < ApplicationController
  before_action :set_forum, only: %i[ edit update destroy ]
  before_action :require_user, only: [:new, :create, :follow ,:unfollow]

  def new
    @forum = Forum.new
  end

  def index
    if params[:search]
      @forums = Forum.paginate(:page => params[:page], :per_page => 2).where(['lower(name) ILIKE ?',"%#{params[:search]}%"])
      respond_to do |format|
        format.html
        format.js
    end
    else
      @forums = Forum.all
      @forums = @forums.paginate(:page => params[:page], :per_page => 2)
      respond_to do |format|
        format.html
        format.js
    end
    end
  end


  def vote_sort
    if params[:search]
      @forums = Forum.sort_by{|f| f[:users.size]}.reverse.paginate(:page => params[:page], :per_page => 2).where(['lower(name) ILIKE ?',"%#{params[:search]}%"])
      respond_to do |format|
        format.html
        format.js
    end
    else
      @forums = Forum.all
      @forums = @forums.sort_by{|f| f[:users.size]}.reverse.paginate(:page => params[:page], :per_page => 2)
      respond_to do |format|
        format.html
        format.js
    end
    end
  end

  def show
    @forum = Forum.find(params[:id])
    redirect_to forum_articles_path(@forum)
  end

  def create
    @forum = Forum.new(forum_params.except(:email, :forum_id))
    respond_to do |format|
      if @forum.save
        current_user.forums << @forum
        a = current_user.admins.find_by_forum_id(@forum.id)
        a.admin= true
        a.save
        format.html { redirect_to forum_path(@forum), notice: "Se ha creado con exito el foro"}
      else
        format.html {render :new}
      end
    end
  end

  def edit

  end

  def update
      if @forum.update(forum_params.except(:email, :forum_id))
        @user = User.where("email = ?", forum_params[:email])
        @a = @forum.admins.find_by_user_id(@user)
        @a.admin = true
        @a.save
        redirect_to forums_path
      else
        render 'edit'
      end
  end

  def destroy
    @forum.destroy
    redirect_to forums_path
  end

  def subscribe
    @forum = Forum.find(params[:forum_id])
    @user = current_user
    @user.forums << @forum unless @user.forums.include?(@forum)
    a = current_user.admins.find_by_forum_id(@forum.id)
    a.subscribe = true
    a.save
    #@user.forums << @forum unless @user.forums.include?(@forum)
    redirect_to forum_path(@forum)
  end

  def unsuscribe
    @forum = Forum.find(params[:forum_id])
    @user = current_user
    a = current_user.admins.find_by_forum_id(@forum.id)
    a.subscribe = false
    a.save
    #@user.forums.delete(@forum)
    redirect_to forum_path(@forum)
  end

  private

    def forum_params
      params.require(:forum).permit(:name, :description, :op, :op_id, :email, :forum_id)
    end

    def set_forum
      @forum = Forum.find(params[:id])
    end
end
