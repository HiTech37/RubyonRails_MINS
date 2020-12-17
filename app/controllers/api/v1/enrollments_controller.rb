class Api::V1::EnrollmentsController < ApplicationController

    before_action :user_authorized 
    before_action :set_enrollment, only: [:show, :update, :destroy]

    def index 
        @enrollments = current_user.enrollments.all
    end

    # Start: Create the Enrollment
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
     # End: Create the Enrollment

    # Start: Show the Enrollment
    def show 

    end
    # End: Show the Enrollment

    # Start: Update the Enrollment
    def update 

        if  @enrollment &&  @enrollment.update(enrollment_params)
            render :show
        else
            render json: {error: "Enrollment not updated."}
        end
    end
    # End: Update the Enrollment

    # Start: Delete the Enrollment
    def destroy 
        if @enrollment && @enrollment.destroy 
            render json: {success: "Delete Successfully."}, status: 200
        else
            render json: {error: "Enrollment not deleted."}
        end 
    end
    # End: Delete the Enrollment

    private 

    def enrollment_params 
        params.require(:enrollment).permit(:score, :rank, :from_token)
    end

    def set_enrollment 
        @enrollment = Enrollment.find_by_id(params[:id])
    end

end
