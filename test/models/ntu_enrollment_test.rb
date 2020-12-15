require 'test_helper'

class NtuEnrollmentTest < ActiveSupport::TestCase
  test "should add enrollment" do
    assert NtuEnrollment.renew(course_number: "10820Hist1548",
                               student_number: "B05902110",
                               score: "A-",
                               credit: 2,
                               title: "近代台灣的歷程")
  end

  test "should update enrollment" do
    assert NtuEnrollment.renew(course_number: "10820MBA5078",
                               student_number: "B07701150",
                               score: "B-",
                               credit: 4,
                               title: "物聯網下商管統計分析")
  end

  test "should rewrite enrollment" do
    assert NtuEnrollment.renew(course_number: "10820MGT2002-07",
                               student_number: "B07701150",
                               score: "A+",
                               credit: 3,
                               title: "統計學一下")
  end

  test "should match description" do
    assert NtuEnrollment.renew(course_number: "10820Hist1548",
                               student_number: "B05902110",
                               score: "A-",
                               credit: 2,
                               title: "近代台灣的歷程").description == 
    {
       course_number: "10820Hist1548",
       student_number: "B05902110",
       score: "A-",
       credit: 2,
       title: "近代台灣的歷程",
       rank: 0,
       instructor: nil,
       total_enrollment: 0
    }
  end
    
end


