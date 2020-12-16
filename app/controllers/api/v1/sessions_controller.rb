class Api::V1::SessionsController < ApplicationController

    # Authentication Users
    def create 
        @user = User.find_by_email(params[:email])
        if @user && @user.valid_password?(params[:password])
            sign_in :user, @user   
        else
            render json: {error: "Enter valid email and password."}
        end
    end

end
