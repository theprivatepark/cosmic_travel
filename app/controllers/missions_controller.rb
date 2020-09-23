class MissionsController < ApplicationController

  def index 
    @missions = Mission.all
  end

  def show
    @mission = Mission.find(params[:id])
  end

  def new
    @mission = Mission.new

  end
  
  def create
    @mission = Mission.create(mission_params)
    redirect_to scientist_path(@mission.scientist_id)
  end

  private

  def mission_params
    params.require(:mission).permit(:name, :planet_id, :scientist_id)
  end

end
