class NthuCourse < Course
  validates :number, format: { 
    with: /\A\d{3}[123]0[A-Z ]{1,4}\d{6}\z/, 
    message: "Not a valid course ID" 
  }
  has_many :nthu_enrollments
  has_many :nthu_students, through: :nthu_enrollments

  alias enrollments nthu_enrollments

  def university
    'NTHU'
  end

private

  def score_categories
    %w{A+ A A- B+ B B- C+ C C- D E X}
  end

end
