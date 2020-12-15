class NtuCourse < Course
  validates :number, format: { 
    with: /\A\d{3}[12]0[a-zA-CEFHJ-Z ][a-zA-Z ]{1,5}[1-8]\d{3}(-\w{2})?\z/, 
    message: "Not a valid course ID" 
  }
  has_many :ntu_enrollments
  has_many :ntu_students, through: :ntu_enrollments

  alias enrollments ntu_enrollments

  def university
    'NTU'
  end

private

  def score_categories
    %w{A+ A A- B+ B B- C+ C C- F X}
  end

end
