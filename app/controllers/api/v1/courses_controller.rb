class Api::V1::CoursesController < ApplicationController

    def index 

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
