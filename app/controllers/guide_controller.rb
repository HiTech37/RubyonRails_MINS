class GuideController < ApplicationController
  def main
    @ntu_student_count = NtuStudent.count
    @nthu_student_count = NthuStudent.count
    @ntu_enrollment_count = NtuEnrollment.count
    @nthu_enrollment_count = NthuEnrollment.count
    @ntu_course_count = NtuCourse.count
    @nthu_course_count = NthuCourse.count
    @student = session[:student]
  end
end
