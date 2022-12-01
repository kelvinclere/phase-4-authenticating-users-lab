class SessionsController < ApplicationController

    def create
        user = User.find_by(username: params[:username])
        render json: user
        session[:user_id] = user.id
    end

    def destroy
        head :no_content
        session.delete :user_id
    end

end
