class Api::V1::EnrollmentsController < ApplicationController

    before_action :user_authorized 
    before_action :set_enrollment, only: [:show, :update, :destroy]

    def index 
        @enrollments = current_user.enrollments.all
    end

    def create 
        if current_user &&  current_user.university_id
            begin 
                params[:enrollment][:user_id] = current_user.id 
                params[:enrollment][:university_id] = current_user.university_id
                @enrollment =  Enrollment.renew( params[:enrollment] )
                render :show
            rescue 
                render json: {error: "Enrollment not created."}
            end
        else
            render json: {error: "Enrollment not created."}
        end
    end

    def show 

    end

    def update 

        if current_user &&  current_user.university_id
            begin 
                params[:enrollment][:user_id] = current_user.id 
                params[:enrollment][:university_id] = current_user.university_id
                @enrollment =  Enrollment.renew( params[:enrollment] )
                render :show
            rescue 
                render json: {error: "Enrollment not updated."}
            end 
          
        else
            render json: {error: "Enrollment not updated."}
        end
    end

    def destroy 
        if @enrollment && @enrollment.destroy 
            render json: {success: "Delete Successfully."}, status: 200
        else
            render json: {error: "Enrollment not deleted."}
        end 
    end


    private 

    def enrollment_params 
        params.require(:enrollment).permit()
    end

    def set_enrollment 
        @enrollment = Enrollment.find_by_id(params[:id])
    end

end
