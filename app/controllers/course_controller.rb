class CourseController < ApplicationController


  def index
    begin
      if session[:student] or true
        numbers = params[:numbers]
        filtered = course_class.where(number: numbers).map { |e| e.number }
        render json: Hash[numbers.map { |e| [e, filtered.include?(e)] }]
      else
        render json: {}
      end
    end rescue render json: {}
  end

  def show
    begin
      if session[:student] or true
        course = course_class.find_by(number: params[:number])
        render json: course.description
      else 
        render json: {}
      end
    end rescue render json: {}
  end

protected

  def course_class
    raise NotImplementedError
  end

end
