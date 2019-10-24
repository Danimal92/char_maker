class AuthController < ApplicationController
  def signin
  end

  def verify
      # byebug
      @user = User.find_by(name: params[:auth][:name])
      if @user
          session[:user_id] = @user.id
          redirect_to users_path
      else
          flash[:message] = "Incorrect Info, please try again."
          render :signin
      end
  end

  def logout
      session.clear
      redirect_to login_path
  end
end
