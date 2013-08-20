class UnitsController < ApplicationController

  def new
    @unit = Unit.new
  end

  def show
    @unit = Unit.find(params[:id])
  end
  
  def add_lt
    @lt = LearningTarget.new(unit_id: params[:current_unit], name: params[:lt_name], number: params[:lt_number])

    @lt.save
      
    redirect_to unit_path(params[:current_unit])
  end
  
  def unit_params
    params.require(:unit).permit(:name)
  end
end
