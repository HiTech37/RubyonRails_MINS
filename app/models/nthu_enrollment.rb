class NthuEnrollment < Enrollment
  COURSE_CLASS = NthuCourse
  STUDENT_CLASS = NthuStudent

  alias_attribute :course_id, :nthu_course_id
  alias_attribute :student_id, :nthu_student_id

  validates :score, inclusion: { in: %w(A+ A A- B+ B B- C+ C C- D E X),
                                 message: "Score is not valid" }
  belongs_to :nthu_course
  belongs_to :nthu_student

  alias course nthu_course
  alias student nthu_student

  def university
    'NTHU'
  end

end
