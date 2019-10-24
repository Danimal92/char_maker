class JobController < ApplicationController






  def index
    @jobs = Job.all
  end

  def show
    @job = Job.find(params[:id])
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
