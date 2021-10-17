#module Api
#  module V1
class CatFavoritesController < ApplicationController
  def create
    cat_favorite = current_user.cat_favorites.new(cat_favorite_params)
    if cat_favorite.save
      render json: { status: "SUCCESS", data: cat_favorite }
    else
      render json: { status: "ERROR", data: cat_favorite.errors }
    end
  end

  def destroy
    cat_favorite = current_user.cat_favorites.find(params[:id])
    if cat_favorite.destroy
      render json: { status: "SUCCESS", data: cat_favorite }
    else
      render json: { status: "ERROR", data: cat_favorite.errors }
    end
  end

  private

  def cat_favorite_params
    params.require(:cat_favorite).permit(:cat_id)
  end
end

#  end
#end
