class UsersController < ApplicationController
  def index
  end

  def new
    @user = User.new
  end

  def create
    @user = User.new(name: params[:user][:name])
    if @user.save
      redirect_to characters_path
    else
      redirect_to root_path
    end
  end

  def show
  end

  def update
  end

  def edit
  end

  def destroy
  end
end
