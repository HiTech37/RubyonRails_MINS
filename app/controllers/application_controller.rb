class ApplicationController < ActionController::Base
  self.allow_forgery_protection = false # unless ENV["RAILS_ENV"] == "production"
  # before_action :set_student
  
  # def set_student
  #   @student = session[:student]
  # end



  # Start: Authorized user with JWT token 
  def user_authorized 
      @user = User.find_by_token(params[:token])
      if !@user.blank?
         sign_in :user, @user   
      else
        render json: {error: "Your Session expired. Please login again."}
      end
  end

end
