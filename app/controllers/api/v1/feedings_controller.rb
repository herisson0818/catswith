module Api
  module V1
    class FeedingsController < ApplicationController
      before_action :authenticate!

      def create
        feeding = current_user.feedings.new(feeding_params)
        if feeding.save
          render json: { status: "SUCCESS", data: feeding }
        else
          render json: { status: "ERROR", data: feeding.errors }
        end
      end

      def destroy
        feeding = current_user.feedings.find(params[:id])
        if feeding.destroy
          render json: { status: "SUCCESS", data: feeding }
        else
          render json: { status: "ERROR", data: feeding.errors }
        end
      end

      private

      def feeding_params
        params.require(:feeding).permit(:cat_id)
      end
    end
  end
end
