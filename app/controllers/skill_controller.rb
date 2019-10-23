class SkillController < ApplicationController
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

  def skill_params
    params.require(:skill).permit(:name, :ability_score, :desc)
  end
end
