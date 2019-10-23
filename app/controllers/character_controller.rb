class CharacterController < ApplicationController
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

  def character_params
    params.require(:character).permit(:int, :str, :dex, :wis, :cha, :con, :int_mod, :str_mod, :dex_mod, :wis_mod, :cha_mod, :con_mod, :hp, :equipment, :ac, :alignment, :size, :languages, :saving_throws, :name, :initiative )
  end
end
