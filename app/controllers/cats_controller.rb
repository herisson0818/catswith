#module Api
#  module V1
class CatsController < ApplicationController
  before_action :authenticate!
  before_action :set_cat, only: [:show, :update]

  def show
    render json: { status: "SUCCESS", message: "loaded the cat", data: @cat }
  end

  def create
    cat = Cat.new(cat_params)
    if cat.save
      render json: { status: "SUCCESS", data: cat }
    else
      render json: { status: "ERROR", data: cat.errors }
    end
  end

  def update
    if @cat.update(cat_params)
      render json: { status: "SUCCESS", message: "Updated the cat", data: @cat }
    else
      render json: { status: "SUCCESS", message: "Not updated", data: @cat.errors }
    end
  end

  private

  def set_cat
    @cat = Cat.find(params[:id])
  end

  def cat_params
    params.require(:cat).permit(:area_id, :name, :gender, :birthday, :favorite_thing, :is_trn)
  end
end

#  end
#end
