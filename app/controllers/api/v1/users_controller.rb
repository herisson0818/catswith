module Api
  module V1
    class UsersController < ApplicationController
      skip_before_action :authenticate!, only: [:create]
      before_action :set_user, only: [:show, :update]

      def show
        render json: { status: "SUCCESS", message: "loaded the user", data: @user }
      end

      def create
        user = User.new(user_params)
        if user.save
          render json: { status: "SUCCESS", data: user }
        else
          render json: { status: "ERROR", data: user.errors }
        end
      end

      def update
        if @user.update(user_params)
          render json: { status: "SUCCESS", message: "Updated the user", data: @user }
        else
          render json: { status: "SUCCESS", message: "Not updated", data: @user.errors }
        end
      end

      private

      def set_user
        @user = User.find(params[:id])
      end

      def user_params
        params.require(:user).permit(:nick_name, :last_name, :first_name, :gender, :email, :password, :password_confirmation, :zip_code, :prefecture, :city, :house_number, :tel, :building_name)
      end
    end
  end
end
