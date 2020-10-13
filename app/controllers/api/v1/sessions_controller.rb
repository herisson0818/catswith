module Api
  module V1
    class SessionsController < ApplicationController
      skip_before_action :authenticate!, only: [:create]
      before_action :current_user, only: [:destroy]

      def create
        user = User.find_by(email: session_params[:email])

        if user&.authenticate(session_params[:password])
          user.regenerate_token if !user.token
          return render json: { token: user.token }
        else
          return render json: { status: 401, message: "認証に失敗しました" }
        end
      end

      def destroy
        @current_user.update(:token => nil)
        @current_user = nil
      end

      private

      def session_params
        params.require(:session).permit(:email, :password)
      end
    end
  end
end
