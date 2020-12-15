class Api::V1::UsersController < ApplicationController

    # Get All the System Users
    def index 
        @user = User.all 
    end 

    # Register a new user
    def create 
        @user = User.find_by_email(params[:user][:email])
        if @user.blank?
            @user = User.new(user_params) 
            if @user.save

            else
                render json: {error: @user.errors.first}
            end
        else
            render json: {error: "User with this email already exist."}
        end
    end


    private 
    # Setting a new user params
    def user_params
        params.require(:user).permit(:first_name, :last_name, :email, :password)
    end
end
