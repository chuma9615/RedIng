class SessionsController < ApplicationController

  def new
  end


  def create
    @user = User.find_by_email(params[:session][:email])
    if @user && @user.authenticate(params[:session][:password])
      session[:user_id] = @user.id
      #redirect_to '/'
      redirect_to user_path(@user)
    else
      flash[:error] = "Email / Contraseña invalida"
      redirect_to '/login'
    end
  end



  def destroy
    session[:user_id] = nil
    redirect_to '/'
  end


  private
  def user_params
    params.require(:user).permit(:first_name, :last_name, :email, :password, :born_year)
  end

  
end
