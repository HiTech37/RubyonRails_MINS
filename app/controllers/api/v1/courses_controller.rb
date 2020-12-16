class Api::V1::CoursesController < ApplicationController
    before_action :user_authorized 
    
    def index 
        @courses = current_user.courses.all
    end

    def ntu
        @courses = NtuCourse.where(number: params[:number])
        render :index 
    end

    def nthu
        @courses = NthuCourse.where(number: params[:number])
        render :index 
    end

end
