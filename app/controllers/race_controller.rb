class RaceController < ApplicationController
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

  def race_params
    params.require(:race).permit(:name, :con_mod, :int_mod, :wis_mod, :str_mod, :dex_mod, :cha_mod, :features, :speed, :languages)
  end
end
