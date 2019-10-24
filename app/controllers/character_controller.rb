class CharacterController < ApplicationController
  def index
    @characters = Character.find(params[:user_id])
  end

  def show
    @character = Character.find(params[:id])
  end

  def new
   @character = Character.new
  end

  def create
    @character = Character.new(character_params)
    if @character.save
      @character.user_id = params[:user_id]
    else
      redirect_to new_character_path
    end
  end

  def edit
    @character = Character.find(:id)
  end

  def update

  end

  def destroy
    @character = Character.find(:id)
    @character.destroy
  end

  private 

  def character_params
    params.require(:character).permit(:int, :str, :dex, :wis, :cha, :con, :int_mod, :str_mod, :dex_mod, :wis_mod, :cha_mod, :con_mod, :hp, :equipment, :ac, :alignment, :size, :languages, :saving_throws, :name, :initiative, :traits )
  end
end
