class EnrollmentController < ApplicationController

  def renew
    begin
      p params
      session[:student] = university + ' ' + student_number
      render json: (courses.inject(Array.new) do |acc, c|
        acc << enrollment_class.renew(c.permit(:score, :course_number, :credit, :title, :rank, :total_enrollment, :instructor).merge student_number: student_number).description
        acc
      end)
    end rescue render json: {}
  end

  protected

    def enrollment_class
      raise NotImplementedError
    end

    def university
      raise NotImplementedError
    end

    def student_number
      params[:student_number];
    end

    def courses
      params[:courses];
    end

end

