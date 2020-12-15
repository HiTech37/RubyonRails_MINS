class Api::V1::SessionsController < ApplicationController

    def create 
        @user = User.find_by_email(params[:email])
        if @user && @user.valid_password?(params[:password])

        else
            render json: {error: "Enter valid email and password."}
        end
    end

end
