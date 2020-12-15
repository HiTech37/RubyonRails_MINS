class ApplicationController < ActionController::Base
  self.allow_forgery_protection = false # unless ENV["RAILS_ENV"] == "production"
  before_action :set_student
  
  def set_student
    @student = session[:student]
  end

end
