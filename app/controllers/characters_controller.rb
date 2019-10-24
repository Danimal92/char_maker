class CharactersController < ApplicationController
  def index
    @characters = Character.all
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
      redirect_to character_path(@character.id)
    else
      redirect_to new_character_path(Character.new)
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
    params.require(:character).permit(:gender,:int, :str, :dex, :wis, :cha, :con, :int_mod, :str_mod, :dex_mod, :wis_mod, :cha_mod, :con_mod, :hp, :equipment, :ac, :alignment, :size, :languages, :saving_throws, :name, :initiative, :traits )
  end
end
