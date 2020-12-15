class NtuEnrollment < Enrollment
  COURSE_CLASS = NtuCourse
  STUDENT_CLASS = NtuStudent

  alias_attribute :course_id, :ntu_course_id
  alias_attribute :student_id, :ntu_student_id

  validates :score, inclusion: { in: %w(A+ A A- B+ B B- C+ C C- F X),
                                 message: "Score is not valid" }
  belongs_to :ntu_course
  belongs_to :ntu_student

  alias course ntu_course
  alias student ntu_student

  def university
    'NTU'
  end

end
