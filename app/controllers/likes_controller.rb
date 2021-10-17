#module Api
#  module V1
class LikesController < ApplicationController
  before_action :authenticate!

  def create
    like = current_user.likes.new(like_params)
    if like.save
      render json: { status: "SUCCESS", data: like }
    else
      render json: { status: "ERROR", data: like.errors }
    end
  end

  def destroy
    like = current_user.likes.find(params[:id])
    if like.destroy
      render json: { status: "SUCCESS", data: like }
    else
      render json: { status: "ERROR", data: like.errors }
    end
  end

  private

  def like_params
    params.require(:like).permit(:image_id)
  end
end

#  end
#end
