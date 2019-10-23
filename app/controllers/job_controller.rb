class JobController < ApplicationController

  @class_file = File.read('/Users/flatironschool/Desktop/My_Code/char_maker/lib/5e-database/5e-SRD-Classes.json')
  @class_hashes = JSON.parse(@class_file)




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


  def read
    
  end

  private 

  def job_params
    params.require(:job).permit(:saving_throw_profs, :skill_profs_options, :features, :equipment, :hp, :hit_dice)
  end

end
