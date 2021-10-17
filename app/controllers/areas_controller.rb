#module Api
#  module V1
class AreasController < ApplicationController
  before_action :authenticate!
  before_action :set_area, only: [:show, :update]

  def create
    area = Area.new(area_params)
    if area.save
      render json: { status: "SUCCESS", data: area }
    else
      render json: { status: "ERROR", data: area.errors }
    end
  end

  def show
    render json: { status: "SUCCESS", message: "Loaded the area", data: @area.to_json(:include => [:cats]) }
  end

  def index
  end

  def update
    if @area.update(area_params)
      render json: { status: "SUCCESS", message: "Updated the area", data: @area }
    else
      render json: { status: "SUCCESS", message: "Not updated", data: @area.errors }
    end
  end

  private

  def set_area
    @area = Area.find(params[:id])
  end

  def area_params
    params.require(:area).permit(:zip_code, :prefecture, :city)
  end
end

#  end
#end
