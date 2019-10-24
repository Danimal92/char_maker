class BackgroundController < ApplicationController
  def index
    @background.all
  end

  def show
    @background = Background.find(params[])
  end

  def new
    @background = Background.new
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
    params.require(:background).permit(:features, :equipment, :personality, :ideals, :bonds, :flaws)
  end
end
