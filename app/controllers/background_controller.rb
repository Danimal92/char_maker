class BackgroundController < ApplicationController
  def index
  end

  def show
  end

  def new
  end

  def create
  end

  def edit
  end

  def update
  end

  def destroy
  end

  

  

  private 

  def background_params
    params.require(:background).permit(:features, :equipment, :personality, :ideals, :bonds, :flaws, :age, :size)
  end
end
