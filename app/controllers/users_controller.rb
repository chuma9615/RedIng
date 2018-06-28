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
       if f.admins.where(:forum_id => f.id).where(:admin => true).where('user_id != ?',@user.id).size == 0 
           redirect_to forum_path(f.id)
           return
       elsif true
         aux = f.admins.select('user_id').where(:forum_id => f.id).where(:admin => true).where('user_id != ?',@user.id).first
         @user2 = User.find(aux.user_id)
         @foru = Forum.find(f.id)
         @foru.update(:op => @user2.email, :op_id => @user2.id )
       end
     end
     acts = PublicActivity::Activity.where(owner_id: @user.id, owner_type: "User")
     acts.delete_all
     art = Article.find_by_op(@user.email)
     if art != nil
       art.destroy
     end

     com = Comment.find_by_op(@user.email)
     if com != nil
       com.destroy
     end

     @user.destroy
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
