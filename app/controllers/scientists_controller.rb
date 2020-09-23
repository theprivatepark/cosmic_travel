class ScientistsController < ApplicationController

  before_action :find_scientist, only: [:show, :edit, :update, :destroy]

  def show
  end

  def index
    @scientists = Scientist.all
  end
  
  def new
    @scientist = Scientist.new
  end

  def create
    @scientist = Scientist.create(scientist_params)
    if @scientist.save
    redirect_to scientist_path(@scientist)
    else 
      render :new
    end
  end

  def edit
  end

  def update
    @scientist.update(scientist_params)
    redirect_to scientist_path(@scientist)
  end

  def destroy
    @scientist.destroy
    redirect_to scientists_path
  end

  private

  def scientist_params
    params.require(:scientist).permit(:name, :field_of_study)
  end

  def find_scientist
    @scientist = Scientist.find(params[:id])
  end

end
