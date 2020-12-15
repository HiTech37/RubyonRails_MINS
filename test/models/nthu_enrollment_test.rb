require 'test_helper'

class NthuEnrollmentTest < ActiveSupport::TestCase
  test "should add enrollment" do
    assert NthuEnrollment.renew(course_number: "10720GE 163700", 
                                student_number: "104010019", 
                                score: "C-", 
                                credit: 2, 
                                title: "The Philosophy of Life in Zhuangzi", 
                                rank: 41, 
                                total_enrollment: 49)
  end

  test "should update enrollment" do
    assert NthuEnrollment.renew(course_number: "10720LANG200005", 
                                student_number: "104010019", 
                                score: "A", 
                                credit: 2, 
                                title: "Vocabulary Building")
  end

  test "should rewrite enrollment" do
    assert NthuEnrollment.renew(course_number: "10720LANG200005", 
                                student_number: "104010019", 
                                score: "B", 
                                credit: 2, 
                                title: "Vocabulary Building")
  end

  test "should match description" do
    assert NthuEnrollment.renew(course_number: "10720PHYS326000", 
                                student_number: "104010019", 
                                score: "A", 
                                credit: 3, 
                                title: "Thermal and Statistical Physics II",
                                rank: 12, 
                                total_enrollment: 30, 
                                instructor: "林秀豪").description ==
    {
      title: "Thermal and Statistical Physics II",
      course_number: "10720PHYS326000", 
      student_number: "104010019", 
      score: "A", 
      credit: 3, 
      rank: 12, 
      total_enrollment: 30, 
      instructor: "林秀豪"
    }
  end
end
