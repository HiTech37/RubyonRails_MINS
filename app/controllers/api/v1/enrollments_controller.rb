class Api::V1::EnrollmentsController < ApplicationController

    def index 

    end

    def ntu 
        @enrollments = NtuEnrollment.where(ntu_course_id: params[:course_id])
    end

    def nthu 
        @enrollments = NthuEnrollment.where(ntu_course_id: params[:course_id])
    end

end
