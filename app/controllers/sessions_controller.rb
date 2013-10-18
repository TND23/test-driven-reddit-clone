class SessionsController < ApplicationController
  def new
    render :new
  end

  def create
    @user = User.find_by_user_name(params[:user][:user_name])

    if @user.nil? || !@user.is_password?(params[:user][:password])
      render :new
    else
      @user.reset_session_token!
      session[:token] = @user.session_token
      redirect_to user_url(@user)
    end
  end


  def destroy
    session[:token] = nil
    render :new
  end

end
