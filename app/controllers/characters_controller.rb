class CharactersController < ApplicationController

  def index
    @characters = Character.all
  end

  def show
    @character = Character.find(params[:id])
    @race = Race.find(@character.race_id)
    @job = Job.find(@character.job_id)
    @skills = Skill.find(@character.skill_ids)
    @spells = Spell.find(@character.spell_ids)

  end

  def new
   @character = Character.new
  end

  def create
    @character = Character.new(character_params)
    @character.user_id = 1
    if @character.save
      
    
      redirect_to character_path(@character)
    else
      flash[:message] = "There is an error"
      redirect_to new_character_path(Character.new)
    end 
  end

  def edit
    @character = Character.find(params[:id])
  end

  def update
    @character = Character.find(params[:id])
    if @character.update(character_params)
      redirect_to characters_path
    else
      flash[:message] = "There has been an error"
      redirect_to character_path(@character)
    end
  end

  def destroy
    @character = Character.find(params[:id])
    
    if @character.destroy
      @character.spells.delete
      @character.skills.delete
      redirect_to characters_path
    end
  end

  private 

  def character_params
    params.require(:character).permit(:user_id,:name,:gender, :equipment,:int,:str,:dex,:wis,:cha,:con,:hp,:ac,:alignment,:size,:languages,:saving_throws,:initiative, :spells_id, :skills_id, :race_id, :job_id, :spell_ids, :skill_ids)
  end
end
