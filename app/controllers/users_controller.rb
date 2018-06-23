class UsersController < ApplicationController
before_action :require_user, only: [:artciles]
  def new
    @user = User.new
  end

  def show
    @user = User.find(params[:id])
    @votos = @user.find_voted_items.paginate(:page => params[:page], :per_page => 3)
  end


  def edit
    @user= User.find(params[:id])
  end


  def update
    @user = User.find(params[:id])
      if @user.update(user_params)
        redirect_to @user
      else
        render 'edit'
      end
  end

  def destroy
     @user = User.find(params[:id])
     @user.forums.each do |f|
       if Admin.select('forum_id').where('forum_id = ?',f.id).count == 1
           redirect_to forum_path(f.id)
           return
       end
     @user.destroy
     end
     reset_session
     redirect_to '/'
   end

  def create
    @user = User.new(user_params)
    if @user.save
      session[:user_id] = @user.id
      redirect_to user_path(@user)
    else
      redirect_to '/signup'
    end
  end

  def articles
    if params[:search]
      @voted_articles = []
      @votos = current_user.find_voted_items
      @votos.each do |vote|
        if vote.is_a?(Article)
          if current_user.voted_up_on? vote
              @voted_articles << vote
          end
        end
      end
      @voted_articles = @voted_articles.select{|a| a.title.include? params[:search]}.paginate(:page => params[:page], :per_page => 6)

    else
      @votos = current_user.find_voted_items
      @voted_articles = []
      @votos.each do |vote|
        if vote.is_a?(Article)
          if current_user.voted_up_on? vote
              @voted_articles << vote
          end
        end
      end
    end
    @voted_articles = @voted_articles.paginate(:page => params[:page], :per_page => 6)
  end


  private
  def user_params
    params.require(:user).permit(:first_name, :last_name, :email, :password, :born_year, :avatar_url)
  end
end
