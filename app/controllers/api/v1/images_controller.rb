module Api
  module V1
    class ImagesController < ApplicationController
      before_action :authenticate!

      def create
        image = current_user.images.new(image_params)
        if image.save
          render json: { status: "SUCCESS", data: image }
        else
          render json: { status: "ERROR", data: image.errors }
        end
      end

      def destroy
        image = current_user.images.find(params[:id])
        if image.destroy
          render json: { status: "SUCCESS", data: image }
        else
          render json: { status: "ERROR", data: image.errors }
        end
      end

      def show
        render json: { status: "SUCCESS", message: "loaded the image", data: @image }
      end

      private

      def image_params
        params.require(:image).permit(:cat_id, :caption, :cat_photo)
      end
    end
  end
end
